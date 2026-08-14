// 雨糖科技 Inno Setup 安装体验脚本 - Partner 选项
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于 Partner Release 安装后选项。

[Run]
; 完成安装时访问网站
//Filename: "http://www.partner.placeholder/"; Description: "访问 Partner"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCChkHy345;

[Code]
function ChkProcessNameMeFcl(): Boolean;
begin  // 检查进程名是否包含，如果有则返回正确值
  Result:= False;
  if Pos('mefcl', ProcessName) > 0 then
  Result := True;
end;
