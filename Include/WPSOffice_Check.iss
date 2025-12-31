// 雨糖科技 Inno Setup 安装体验脚本 - WPS Office 程序安装检查
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于检测计算机中 WPS Office 已安装版本的信息。

[Code]
function WPSIA32Main(): Boolean;
begin  // 检查是否安装 WPS Office 32 位主程序       
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

function WPSAMD64Main(): Boolean;
var  // 检查是否安装 WPS Office 64 位主程序       
  WPSInstArch: string;
begin
  result:= false;
  if (IsWin64) then begin
    RegQueryStringValue(HKLM64, 'SOFTWARE\Kingsoft\Office\6.0\Common', 'Architecture', WPSInstArch)
    if (WPSInstArch = 'x64') and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
      result:= true;
    end;
  end;
end;

function WPSHKCUMain(): Boolean;
begin  // 检查是否安装 WPS Office 主程序（单用户安装）      
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKCU\Software\kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

function KPDFIA32Main(): Boolean;
begin  // 检查是否安装金山 PDF 独立版 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Kingsoft\PDF\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

function KPDFHKCUMain(): Boolean;
begin  // 检查是否安装金山 PDF 独立版 32 位主程序（单用户安装）
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKCU\Software\Kingsoft\PDF\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

function KSOClassicMode(): Boolean;
var  // 检查 WPS Office 是否为经典模式
  RCTech_KSOAppMode: string;
begin
  result:= false;
  RegQueryStringValue(HKCU, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  RegQueryStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  if (RCTech_KSOAppMode = 'classical') then begin
    //Log('[Windose Installer] Info: WPS Office is in classic mode.');
    result:= true;
  end;
end;

function KSOPrometheusMode(): Boolean;
var  // 检查 WPS Office 是否为整合模式
  RCTech_KSOAppMode: string;
begin
  result:= false;
  RegQueryStringValue(HKCU, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  RegQueryStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  if (RCTech_KSOAppMode = 'prome_fushion') then begin
    //Log('[Windose Installer] Info: WPS Office is in prometheus mode.');
    result:= true;
  end;
end;

function KSOMultiComMode(): Boolean;
var  // 检查 WPS Office 是否为多组件模式
  RCTech_KSOAppMode: string;
begin
  result:= false;
  RegQueryStringValue(HKCU, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  RegQueryStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  if (RCTech_KSOAppMode = 'prome_independ') then begin
    //Log('[Windose Installer] Info: WPS Office is in multi-component mode.');
    result:= true;
  end;
end;
