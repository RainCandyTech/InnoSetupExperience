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
    Log('[RainCandy Technology Inno Setup Experience] Info: Setup is running in Russian language. Setting language configuration for MathType...');
    // 注册表必须写入到 HKCU，因为 MathType 7 安装程序会自动卸载之前版本，如果写入到 HKLM32 键值在卸载的时候就被删掉了
    RegWriteStringValue(HKCU, 'SOFTWARE\Design Science\DSMT{#MyAppMajorVersion}\Config', 'AppLang', '0x0419,RUS');
  end;
end;

procedure RCTMTNoticeWPS;
begin  // 当安装程序检测到已安装 WPS Office 时，提醒用户安装 VBA 组件
  if (MathType{#MyAppMajorVersion}Main = true) and ((WPSIA32Main = true) or (WPSAMD64Main = true) or (WPSHKCUMain = true)) then
  begin
    Log('[RainCandy Technology Inno Setup Experience] Info: WPS Office is detected on this computer.');
      if (WPSAMD64Main = true) then
      begin
        Log('[RainCandy Technology Inno Setup Experience] Warning: Installed WPS Office Version is 64-bit architecture. Now notice user about its incompatibility...');
        SuppressibleMsgBox(CustomMessage('MathTypeUMRSEWarnWPSx64') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
      end else begin
        Log('[RainCandy Technology Inno Setup Experience] Info: Installed WPS Office Version is not 64-bit architecture. Now notice user to install VBA component...');
        SuppressibleMsgBox(CustomMessage('MathTypeUMRSENoticeWPS') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);
      end;
  end;
end;
