// 雨糖科技 Inno Setup 安装体验脚本 - 安装过程中 GPU-Z 检查步骤
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码将 GPU-Z 程序内置进安装体验，以方便用户在驱动程序安装程序 Repack 的安装过程中进行故障排除。
// 原开发商网址：https://www.techpowerup.com/gpuz/ - 在此表示感谢。

[Files]
; GPU-Z 主程序
Source: "..\Plugins\GPU-Z\*.*"; Flags: dontcopy nocompression;

[CustomMessages]

[Run]

[Code]
function GPUZNotInstMode(): Boolean;
var
  PathPreference: string;
begin
  result:= false;
  RegQueryStringValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir', PathPreference);
  if PathPreference = 'no' then begin
    result:= true;
  end;
end;

function GPUZInstalled(): Boolean;
begin  // 检查是否存在 GPU-Z 的已安装模式
  result:= false;
  if (GPUZNotInstMode = false) and (RegValueExists(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir')) and (FileExists(ExpandConstant('{reg:HKCU\Software\techPowerUp\GPU-Z,Install_Dir}\GPU-Z.exe'))) then
  begin
    result:= true;
  end;
end;

procedure ButtonOnClickGPUZ(Sender: TObject);
var  // 在安装界面的按钮点击后，触发启动 GPU-Z 的操作
  ResultCode: integer;
  languageName: string;
begin
  languageName := ActiveLanguage();
  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then
  begin  // 中文版去掉了安装询问，直接打开就行
    Log('[Windose Installer] Info: Installer is running in Chinese, start Chinese version of GPU-Z.');
    ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
  end else
  begin  // 不是中文版，来看看电脑有没有安装好的程序
    Log('[Windose Installer] Info: Installer is not running in Chinese.');
    if (GPUZInstalled = true) then
    begin  // 如果检查到电脑有安装模式的 GPU-Z，就直接启动安装好的版本
      Log('[Windose Installer] Info: An existing installation of GPU-Z has detected. Launching...');
      ShellExec('', ExpandConstant('{reg:HKCU\Software\techPowerUp\GPU-Z,Install_Dir}\GPU-Z.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
    end else
    begin  // 如果没检测到安装好的 GPU-Z，就写入一个注册表键值，运行程序，然后再删掉
      Log('[Windose Installer] Info: No existing installation of GPU-Z has detected. ');
      if not(RegValueExists(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir')) then
      begin
      Log('[Windose Installer] Info: Writing registry to avoid GPU-Z installation dialog, then launching...');
        RegWriteStringValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir', 'no');
        ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
        Sleep(5000);
        Log('[Windose Installer] Info: Wake up, start cleaning registry...');
        RegDeleteValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir');
      end else
      begin
        Log('[Windose Installer] Info: Registry does not provide void installation directory...');
        ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
      end;  
    end;
  end;
end;
