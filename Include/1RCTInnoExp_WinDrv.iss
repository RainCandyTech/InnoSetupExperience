// 雨糖科技 Inno Setup 安装体验脚本 - 驱动程序封装主要函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码主要用于使用雨糖科技 Inno Setup 安装体验封装的 Windows 驱动程序。

[Files]
; 检查 Windows 驱动程序策略的 PowerShell 脚本
Source: "..\Plugins\windrvpolicycheck.ps1"; DestDir: {tmp}; Flags: dontcopy nocompression;

[CustomMessages]

[Code]
var // 全局变量
  FirmwareType: Integer;

// 通过调用 kernel32.dll，获取系统当前的启动环境
// 由 NixaVulpi 雪狐 (https://github.com/NixaVulpi) 编写与启发，在此表示感谢。
// 返回值：-1: Failed; 0: Unknown; 1: Legacy BIOS; 2: UEFI; 3: Not implemented
function GetFirmwareType(var FirmwareType: Integer): Boolean;
external 'GetFirmwareType@kernel32.dll stdcall delayload';

// 基于上面的调用，对系统启动环境进行检测
procedure FirmwareDetection();
begin
  if (Version.NTPlatform) and (Version.Build >= 7809) then
  begin // 如果系统版本为 Windows 8 Build 7809 及以上版本（没错，一个个版本试出来的），则继续
    Log('[Windose Installer] Info: Gathering boot mode information...');
    GetFirmwareType(FirmwareType); // 这里调用上面来获取当前系统启动环境
    Log('[Windose Installer] Info: Gathered boot mode code is: ' + IntToStr(FirmwareType) + '.');
  end else
  begin // 否则，放弃系统启动环境检测，不然会报错
    Log('[Windose Installer] Info: Cannot gather boot mode information on current operating system...');
    FirmwareType := 0;
  end;
end;

procedure ButtonOnClickDevMgmt(Sender: TObject);
var  // 在安装界面的按钮点击后，触发启动设备管理器的操作
  ResultCode: integer;
begin
  ShellExec('', ExpandConstant('{sys}\devmgmt.msc'), '', '', SW_SHOW, ewNoWait, ResultCode)
end;

// 检查注册表是否存在设备安装限制相关键值
function IsDenyUnspecDevice(): Boolean;
var
  DeviceUnspecDenyState: Cardinal;
  DeviceInstDisableState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions', 'DenyUnspecified', DeviceUnspecDenyState)
  if (DeviceUnspecDenyState = 1) then
  begin
    Log('[Windose Installer] Error: The OS has been configured to block installation for all device that is not specified in group policy!');
    result := true;
  end;
  RegQueryDWordValue(HKLM, 'SYSTEM\CurrentControlSet\Services\DeviceInstall\Parameters', 'DeviceInstallDisabled', DeviceInstDisableState)
  if (DeviceInstDisableState = 1) then
  begin
    Log('[Windose Installer] Error: "DeviceInstall" service has been configured to disable device installation!');
    result := true;
  end;
end;

// 检查操作系统中是否存在针对交叉签名驱动的代码完整性策略
function IsCiPolicyDenyXSign(): Boolean;
var
  WinDrvPolicyResult: AnsiString;
  ErrorCode: Integer;
begin
  result:= false;
  ExtractTemporaryFile('windrvpolicycheck.ps1');  // 释放 PowerShell 脚本
  ShellExec('', ExpandConstant('{sysnative}\cmd.exe'), ExpandConstant('/c powershell.exe -executionpolicy bypass -File "{tmp}\windrvpolicycheck.ps1" >> windrvpolicyresult.txt'), ExpandConstant('{tmp}'), SW_HIDE, ewWaitUntilTerminated, ErrorCode);
  
  if LoadStringFromFile(ExpandConstant('{tmp}\windrvpolicyresult.txt'), WinDrvPolicyResult) then
  begin  // 读取结果文件
    if Pos('STATUS_EVAL', WinDrvPolicyResult) > 0 then  // 评估模式
    begin
      Log('[Windose Installer] Warning: Windows Driver policy is in audit mode!');
    end;
    if Pos('STATUS_ENFORCED', WinDrvPolicyResult) > 0 then  // 强制执行模式
    begin
      Log('[Windose Installer] Error: Windows Driver policy is in enforcement mode!');
      result:= true;
    end;
  end;
end;
