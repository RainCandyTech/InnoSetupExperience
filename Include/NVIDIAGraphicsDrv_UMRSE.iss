// 雨糖科技 Inno Setup 安装体验脚本 - NVIDIA 显示驱动程序安装相关
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于 NVIDIA 显示驱动程序修改版本。

[Files]
; 「安装前设备检测」需要使用的图片
Source: "E:\Development\NVIDIA\DeviceChkPic\*.bmp"; Flags: dontcopy nocompression;

[CustomMessages]

[Code]
function NVIDIADrv_RequireReboot(): Boolean;
begin  // 检查是否已经存在 NVIDIA 重启占位符注册表     
  result:= false;
  if (RegKeyExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\NVIDIA_RebootNeeded_{CE1CA72E-7C77-4b69-A5D3-2C4CFCD625FD}')) then begin
    result:= true;
  end;
end;
