// 雨糖科技 Inno Setup 安装体验脚本 - Partner 选项
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于 Partner Release 安装后选项。

[Run]
; 完成安装时访问 423Down
Filename: "https://www.423down.com/"; Description: "访问 423Down 网站"; Flags: postinstall shellexec skipifsilent unchecked; Check: RCPartnerChk423; 

[Code]
function RCPartnerChk423(): Boolean;
begin  // 检查根目录是否有423down链接，如果有则在完成页展示 423down 网站跳转项
  result:= false;
  if ((FileExists(ExpandConstant('{src}\423Down.lnk'))) or (FileExists(ExpandConstant('{src}\423Down.url')))) then begin
    result:= true;
  end;
end;