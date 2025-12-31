// 雨糖科技 Inno Setup 安装体验脚本 - 驱动程序封装主要函数
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码主要用于使用雨糖科技 Inno Setup 安装体验封装的 Windows 驱动程序。
// 启动环境检测代码由 YukiIsait (https://github.com/YukiIsait) 编写与启发，在此表示感谢。

[CustomMessages]

[Run]

[Code]
procedure ButtonOnClickDevMgmt(Sender: TObject);
var  // 在安装界面的按钮点击后，触发启动设备管理器的操作
  ResultCode: integer;
begin
  ShellExec('', ExpandConstant('{sys}\devmgmt.msc'), '', '', SW_SHOW, ewNoWait, ResultCode)
end;

// 通过调用 kernel32.dll，获取系统当前的启动环境 
// 返回值：-1: Failed; 0: Unknown; 1: Legacy BIOS; 2: UEFI; 3: Not implemented
function GetFirmwareType(var FirmwareType: Integer): Boolean;
external 'GetFirmwareType@kernel32.dll stdcall';

function IsDenyUnspecDevice(): Boolean;
var  // 检查注册表是否存在设备安装限制相关键值
  DeviceUnspecDenyState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions', 'DenyUnspecified', DeviceUnspecDenyState)
  if (DeviceUnspecDenyState = 1) then
  begin
    Log('[Windose Installer] Warning: The OS has been configured to block installation for all device that is not specified in group policy!');
    result := true;
  end;
end;
