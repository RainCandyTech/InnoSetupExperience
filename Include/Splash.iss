// 雨糖科技 Windose Installer 安装体验脚本 - Splash 开屏图片插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码包含用于 Splash 开屏图片插件的相关函数。

[Files]
Source: "..\Plugins\callnsis.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\callnsis{#RCInnoExpPluginSignMark}.dll"; DestName: "callnsis.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\AdvSplash.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\AdvSplash{#RCInnoExpPluginSignMark}.dll"; DestName: "AdvSplash.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
var // 全局变量
  val: Integer;

// 插件初始化函数
function callplug(parentwnd: Integer; pluginname,funcname,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10: PAnsiChar): Integer;
external 'callplug@files:callnsis.dll stdcall';

// Splash 开屏图片重命名
function GetFileName(const AFileName: string): string;
begin
  Result := ExpandConstant('{tmp}\' + AFileName);
end;

// 释放文件，并根据安装程序语言重命名 Splash 开屏图片
procedure AiMofSplashExtract;
begin
  ExtractTemporaryFile('AdvSplash.dll');
  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then begin
    if (languageName = 'chinesesimp') then begin
      ExtractTemporaryFile('Splash_CS.bmp');
      RenameFile(GetFileName('Splash_CS.bmp'), GetFileName('Splash.bmp'));
    end else begin
      ExtractTemporaryFile('Splash_CT.bmp');
      RenameFile(GetFileName('Splash_CT.bmp'), GetFileName('Splash.bmp'));
    end;
  end else begin
    ExtractTemporaryFile('Splash.bmp');
  end;
end;

// 开始展示 Splash
procedure AiMofSplashShow;
begin
  val:=callplug(0,ExpandConstant('{tmp}\AdvSplash.dll'),'show','2400','1400','400','-1',ExpandConstant('{tmp}\Splash'),'','','','','');
end;

// Splash 开屏图片初始化流程
procedure AiMofSplashInit;
begin
  if (RCTIsSilent = false) then
  begin
    Log('[Windose Installer] Info: Initiating splash screen...');
    AiMofSplashExtract;
    AiMofSplashShow;
    Log('[Windose Installer] Info: Splash screen load complete.');
  end else begin
    Log('[Windose Installer] Info: Not showing splash screen because setup is running in slient mode.');
  end;
end;
