// 雨糖科技 Inno Setup 安装体验脚本 - Partner 选项
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于 Partner Release 安装后选项。

[Run]
; 完成安装时访问我学会声会影论坛
Filename: "http://www.hy345.com/"; Description: "访问我学会声会影论坛"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCChkHy345;

[Code]
function RCChkHy345(): Boolean;
begin  // 检查根目录是否有我学会声会影论坛链接，如果有则在完成页展示网站跳转项
  result:= false;
  if ((FileExists(ExpandConstant('{src}\我学会声会影.lnk'))) or (FileExists(ExpandConstant('{src}\我学会声会影.url')))) then begin
    result := true;
  end;
end;
