// 雨糖科技 Inno Setup 安装体验脚本 - MathType 程序安装检查
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于 MathType 特别版安装过程中的额外检测。

[Code]
procedure RCTSetMTLangRU;
var
  languageName: string;
begin  // 当安装程序为俄语环境时，写入注册表以便 MathType 7+ 默认使用俄语
  languageName := ActiveLanguage();
  if (languageName = 'russian') then
  begin
    Log('[Windose Installer] Info: Setup is running in Russian language. Setting language configuration for MathType...');
    // 注册表必须写入到 HKCU，因为 MathType 7 安装程序会自动卸载之前版本，如果写入到 HKLM32 键值在卸载的时候就被删掉了
    RegWriteStringValue(HKCU, 'SOFTWARE\Design Science\DSMT{#MyAppMajorVersion}\Config', 'AppLang', '0x0419,RUS');
  end;
end;

procedure RCTMTNoticeWPS;
begin  // 当安装程序检测到已安装 WPS Office 时，提醒用户安装 VBA 组件
  if (MathType{#MyAppMajorVersion}Main = true) and ((WPSIA32Main = true) or (WPSAMD64Main = true) or (WPSHKCUMain = true)) then
  begin
    Log('[Windose Installer] Info: WPS Office is detected on this computer.');
    Log('[Windose Installer] Info: Now notice user to install VBA component...');
    SuppressibleMsgBox(CustomMessage('MathTypeUMRSENoticeWPS') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);
  end;
end;

procedure SetUninstNameMT();
begin  // 对于简体中文，为系统卸载管理处写入中文信息
  if (MathType{#MyAppMajorVersion}Main = true) and (languageName = 'chinesesimp') and (RegValueExists(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DSMT{#MyAppMajorVersion}', 'DisplayName')) then begin
    RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DSMT{#MyAppMajorVersion}','DisplayName', 'MathType 雨糖科技特别版');
  end;
end;

procedure MT7AfterInst();
begin  // 对于 MathType 7 版本的安装后处理
  SetUninstNameMT;
  RCTMTNoticeWPS;
end;
