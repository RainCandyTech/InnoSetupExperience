// 雨糖科技 Windose Installer 安装体验脚本 - Partner Release 相关
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于 Partner Release 相关。

[Run]
; 完成安装时访问我学会声会影论坛
//Filename: "http://www.hy345.com/"; Description: "访问我学会声会影论坛"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCChkHy345;

; 完成安装时访问苦瓜甘甜博客
//Filename: "http://www.kuguagantian.com/"; Description: "访问苦瓜甘甜博客"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCPartnerChkWszjf;

; 完成安装时访问织金旋律博客
//Filename: "http://www.zhijinxuanlv.com/"; Description: "访问织金旋律博客"; Flags: postinstall shellexec skipifsilent unchecked; Check: RCPartnerChkZhijin;

[Code]
// 检查根目录是否有我学会声会影论坛链接，如果有则在完成页展示对应网站跳转项
//function RCChkHy345(): Boolean;
//begin
  //result:= false;
  //if ((FileExists(ExpandConstant('{src}\我学会声会影.lnk'))) or (FileExists(ExpandConstant('{src}\我学会声会影.url')))) then begin
    //result := true;
  //end;
//end;

// 检查根目录是否有苦瓜甘甜博客链接，如果有则在完成页展示对应网站跳转项
//function RCPartnerChkWszjf(): Boolean;
//begin
  //result:= false;
  //if ((FileExists(ExpandConstant('{src}\苦瓜甘甜博客.lnk'))) or (FileExists(ExpandConstant('{src}\苦瓜甘甜博客.url')))) then begin
    //result:= true;
  //end;
//end;

// 检查根目录是否有织金旋律博客链接，如果有则在完成页展示对应网站跳转项
//function RCPartnerChkZhijin(): Boolean;
//begin
  //result:= false;
  //if ((FileExists(ExpandConstant('{src}\织金旋律博客.lnk'))) or (FileExists(ExpandConstant('{src}\织金旋律博客.url')))) then begin
    //result:= true;
  //end;
//end;

// 检查进程名是否包含 MeFcl，如果有则返回正确值
function ChkProcessNameMeFcl(): Boolean;
begin
  Result:= False;
  if Pos('mefcl', ProcessName) > 0 then
  Result := True;
end;
