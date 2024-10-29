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

procedure NijikaExitCleanTempNV();
begin
  DelTree(ExpandConstant('{tmp}\Display.Driver'), True, True, True);
  DelTree(ExpandConstant('{tmp}\Display.Nview'), True, True, True);
  DelTree(ExpandConstant('{tmp}\Display.Optimus'), True, True, True);
  DelTree(ExpandConstant('{tmp}\FrameViewSDK'), True, True, True);
  DelTree(ExpandConstant('{tmp}\GFExperience'), True, True, True);
  //DelTree(ExpandConstant('{tmp}\MSVCRT'), True, True, True);
  //DelTree(ExpandConstant('{tmp}\NvCamera'), True, True, True);
  //DelTree(ExpandConstant('{tmp}\NvContainer'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NVI2'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NVPCF'), True, True, True);
  DelTree(ExpandConstant('{tmp}\PhysX'), True, True, True);
  DelTree(ExpandConstant('{tmp}\PPC'), True, True, True);
  DelTree(ExpandConstant('{tmp}\RootCATrust'), True, True, True);
  DelTree(ExpandConstant('{tmp}\ShadowPlay'), True, True, True);
end;

procedure NijikaExitIfNVNeedReboot();
begin  // 如果发现安装程序要求重启计算机才能继续安装，则直接退出安装程序，以避免英伟达安装程序直接重启系统，而安装体验还在后台阻止重启的情况发生
  if (NVIDIADrv_RequireReboot = true) then begin
    Log('[RainCandy Technology Inno Setup Experience] Info: NVIDIA Installer requires system reboot. Now exiting setup.');
    NijikaExitCleanTempNV();
    ExitProcess(0);
  end;
end;
