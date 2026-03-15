// 雨糖科技 Windose Installer 安装体验脚本 - 视觉效果插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于 ISSkin 插件的相关函数。

[Files]
; 插件本体
//Source: "..\ISSkin\ISSkinExU.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\ISSkinExU{#RCInnoExpPluginSignMark}.dll"; DestName: "ISSkinExU.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

; 视觉效果文件
Source: "..\Plugins\ISSkin\{#MyAppSetupStyle}"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
// Load Skin Api
procedure LoadSkin(lpszPath: String; lpszIniFileName: String);
external 'LoadSkin@files:ISSkinExU.dll stdcall';

// Importing UnloadSkin API from ISSkinExU.dll
procedure UnloadSkin();
external 'UnloadSkin@files:ISSkinExU.dll stdcall';

// Importing ShowWindow Windows API from User32.DLL
function ShowWindow(hWnd: Integer; uType: Integer): Integer;
external 'ShowWindow@user32.dll stdcall';

// 自定义主题加载
procedure AiMofSkinLoad;
begin
  Log('[Windose Installer] Info: Initiating custom skin...');
  ExtractTemporaryFile('{#MyAppSetupStyle}');
  LoadSkin(ExpandConstant('{tmp}\{#MyAppSetupStyle}'), '{#MyAppSetupStyleConf}');
end;
