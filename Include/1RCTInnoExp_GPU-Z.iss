// 雨糖科技 Inno Setup 安装体验脚本 - 安装过程中 GPU-Z 检查步骤
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码将 GPU-Z 程序内置进安装体验，以方便用户在驱动程序安装程序 Repack 的安装过程中进行故障排除。
// 原开发商网址：https://www.techpowerup.com/gpuz/ - 在此表示感谢。

[Files]
; GPU-Z 主程序
Source: "..\Plugins\GPU-Z\gpuz.exe"; Flags: dontcopy nocompression;
Source: "..\Plugins\GPU-Z\gpuz_chinese.exe"; Flags: dontcopy nocompression;

[CustomMessages]

[Run]

[Code]
function GPUZNeedInst(): Boolean;
var
  PathPreference: string;
begin
  result:= false;
  if not(RegValueExists(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir')) then begin
    result:= true;
  end;
  RegQueryStringValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir', PathPreference);
  if PathPreference = '' then begin
    result:= true;
  end;
end;

function GPUZInstalled(): Boolean;
begin  // 检查是否存在 GPU-Z 的已安装模式
  result:= false;
  if (GPUZNeedInst = false) and (RegValueExists(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir')) and (FileExists(ExpandConstant('{reg:HKCU\Software\techPowerUp\GPU-Z,Install_Dir}\GPU-Z.exe'))) then
  begin
    result:= true;
  end;
end;

procedure GPUZLaunch;
var  // 根据安装程序语言，启动相应的 GPU-Z 语言版本
  ResultCode: integer;
begin
  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then
  begin  // 如果安装程序以简中/繁中运行，则启动 GPU-Z 汉化版
    Log('[Windose Installer] Info: Installer is running in Chinese, start Chinese version of GPU-Z.');
    ExtractTemporaryFile('gpuz_chinese.exe');
    ShellExec('', ExpandConstant('{tmp}\gpuz_chinese.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
  end else
  begin  // 反之，则启动 GPU-Z 官方原版
    Log('[Windose Installer] Info: Installer is not running in Chinese, start official version of GPU-Z.');
    ExtractTemporaryFile('gpuz.exe');
    ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
  end;
end;

procedure ButtonOnClickGPUZ(Sender: TObject);
begin  // 在安装界面的按钮点击后，触发启动 GPU-Z 的操作
  if (GPUZNeedInst = false) then
  begin  // 如果检查到电脑有安装模式的 GPU-Z，就直接启动安装好的版本
    Log('[Windose Installer] Info: GPU-Z will not ask for installation in current environment.');
    GPUZLaunch;
  end else
    begin  // 如果没检测到安装好的 GPU-Z，就写入一个注册表键值，运行程序，然后再删掉
      Log('[Windose Installer] Info: Writing registry to avoid GPU-Z installation dialog, then sleep.');
      RegWriteStringValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir', 'no');
      GPUZLaunch;
      Sleep(5000);
      Log('[Windose Installer] Info: Wake up! Now delete the registry to avoid user confusion.');
      RegDeleteValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir');
  end;
end;
