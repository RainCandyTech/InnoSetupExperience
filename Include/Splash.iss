// 雨糖科技 Inno Setup 安装体验脚本 - Splash 开屏图片插件函数
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码包含用于 Splash 开屏图片插件的相关函数。

[Files]
Source: "..\Plugins\callnsis.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\callnsis{#RCInnoExpPluginSignMark}.dll"; DestName: "callnsis.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\AdvSplash.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\AdvSplash{#RCInnoExpPluginSignMark}.dll"; DestName: "AdvSplash.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
// 插件初始化函数
function callplug(parentwnd: Integer; pluginname,funcname,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10: PAnsiChar): Integer;
external 'callplug@files:callnsis.dll stdcall';

function GetFileName(const AFileName: string): string;
begin  // Splash 开屏图片重命名
  Result := ExpandConstant('{tmp}\' + AFileName);
end;
