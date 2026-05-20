// 雨糖科技 Windose Installer 安装体验脚本 - WPS Office 程序安装检查
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于检测计算机中 WPS Office 已安装版本的信息。

[Code]
// 检查是否安装 WPS Office 32 位主程序
function WPSIA32Main(): Boolean;
begin
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

// 检查是否安装 WPS Office 64 位主程序
function WPSAMD64Main(): Boolean;
var
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

// 检查是否安装 WPS Office 主程序（单用户安装）
function WPSHKCUMain(): Boolean;
begin
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKCU\Software\kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

// 检查是否安装 WPS PDF 独立版 32 位主程序
function KPDFIA32Main(): Boolean;
begin
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Kingsoft\PDF\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

// 检查是否安装 WPS PDF 独立版 64 位主程序
function KPDFAMD64Main(): Boolean;
begin
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Kingsoft\PDF\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

// 检查是否安装 WPS PDF 独立版主程序（单用户安装）
function KPDFHKCUMain(): Boolean;
begin
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKCU\Software\Kingsoft\PDF\Common,InstallRoot}\office6\ksomisc.exe'))) then begin
    result:= true;
  end;
end;

// 检查 WPS Office 当前的窗口管理模式
function WPSCurrentAppMode(): Integer;
var
  WPSAppMode: string;
begin
  Result := 0;  // 未知
  // 按优先级读取注册表
  if RegQueryStringValue(HKCU, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', WPSAppMode) or
     RegQueryStringValue(HKLM, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', WPSAppMode) or
     RegQueryStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', WPSAppMode) then
  begin
    if (WPSAppMode = 'prome_fushion') then begin
      Result := 1;  // 整合模式
    end;
    if (WPSAppMode = 'prome_independ') then begin
      Result := 2;  // 多组件模式
    end;
    if (WPSAppMode = 'classical') then begin
      Result := 3;  // 经典模式
    end;
  end;
end;

// 检查 WPS Office 是否为经典模式
function KSOClassicMode(): Boolean;
begin
  result:= false;
  if (WPSCurrentAppMode = 3) then begin
    //Log('[Windose Installer] Info: WPS Office is in classic mode.');
    result:= true;
  end;
end;

// 检查 WPS Office 是否为整合模式
function KSOPrometheusMode(): Boolean;
begin
  result:= false;
  if (WPSCurrentAppMode = 1) then begin
    //Log('[Windose Installer] Info: WPS Office is in prometheus mode.');
    result:= true;
  end;
end;

//function KSOMultiComMode(): Boolean;
//var  // 检查 WPS Office 是否为多组件模式
  //RCTech_KSOAppMode: string;
//begin
  //result:= false;
  //RegQueryStringValue(HKCU, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  //RegQueryStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  //if (RCTech_KSOAppMode = 'prome_independ') then begin
    //Log('[Windose Installer] Info: WPS Office is in multi-component mode.');
    //result:= true;
  //end;
//end;

// 设置系统程序卸载列表中的应用程序名字（WPS 主程序）
procedure SetUninstNameWPS();
begin
  //RegWriteStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Kingsoft\Office\6.0\Common','DisplayName', 'WPS Office {#MyAppMarketVersion} 雨糖科技特别版');
  if (WPS{#MyAppArchRC}Main = true) and (RegValueExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft Office', 'DisplayName')) then begin
    RegWriteStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft Office','DisplayName', 'WPS Office {#MyAppMarketVersion} 雨糖科技特别版 ({#MyAppRevisionDate}{#MyAppRevisionVer})');
  end;
  if (WPSHKCUMain = true) and (RegValueExists(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft Office', 'DisplayName')) then begin
    RegWriteStringValue(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft Office','DisplayName', 'WPS Office {#MyAppMarketVersion} 雨糖科技特别版 ({#MyAppRevisionDate}{#MyAppRevisionVer})');
  end;
end;

// 设置系统程序卸载列表中的应用程序名字（WPS PDF 独立版）
procedure SetUninstNameWPSPDF();
begin
  if (KPDF{#MyAppArchRC}Main = true) and (RegValueExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft PDF', 'DisplayName')) then begin
    RegWriteStringValue(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft PDF','DisplayName', 'WPS PDF {#MyAppMarketVersion} 雨糖科技特别版 ({#MyAppRevisionDate}{#MyAppRevisionVer})');
  end;
  if (KPDFHKCUMain = true) and (RegValueExists(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft PDF', 'DisplayName')) then begin
    RegWriteStringValue(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Kingsoft PDF','DisplayName', 'WPS PDF {#MyAppMarketVersion} 雨糖科技特别版 ({#MyAppRevisionDate}{#MyAppRevisionVer})');
  end;
end;

// 安装程序结束后，清理临时文件
procedure CleanTempWPS();
begin
  DelTree(ExpandConstant('{tmp}\OemFile'), True, True, True);
  DelTree(ExpandConstant('{tmp}\oeminfo'), True, True, True);
  DelTree(ExpandConstant('{tmp}\VBA'), True, True, True);
end;

// 检查当前系统是否是 WPS Office 安装程序不支持的版本
// 影响系统：Windows Server 2008 R2、Windows 8、Windows 8.1
function WPSIsOSUnsupport(): Boolean;
var
  SupportSvr2008R2: Boolean;
begin
  SupportSvr2008R2 := {#IsSupportNT61Svr};
  if ((Version.Major = 6) and (Version.Minor > 1) and (RCTIsWinClient = true)) or
     ((Version.Major = 6) and (Version.Minor = 1) and (RCTIsWinClient = false) and (SupportSvr2008R2 = false)) then
  begin
    result := true;
  end;
end;

// 检测是否在已安装 WPS Office 的 64 位版本时再尝试覆盖安装 32 位版本
function ChkWPSx64InstErr(): Boolean;
begin
  Result := false;
  if (IsWin64) and (AppTargetArch = 'IA32') and (WPSAMD64Main = true) then 
  begin  
    Result := True;
  end;
end;
