// 雨糖科技 Inno Setup 安装体验脚本 - 驱动程序封装主要函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码主要用于使用雨糖科技 Inno Setup 安装体验封装的 Windows 驱动程序。

[Files]
; 检查 Windows 驱动程序策略的 PowerShell 脚本
Source: "..\Plugins\windrvpolicycheck.ps1"; DestDir: {tmp}; Flags: dontcopy nocompression;

[CustomMessages]

[Code]
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
