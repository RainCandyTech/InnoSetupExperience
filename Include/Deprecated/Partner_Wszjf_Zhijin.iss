// 雨糖科技 Inno Setup 安装体验脚本 - Partner 选项
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于 Partner Release 安装后选项。

[Run]
; 完成安装时访问苦瓜甘甜博客
Filename: "http://www.kuguagantian.com/"; Description: "访问苦瓜甘甜博客"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCPartnerChkWszjf;

; 完成安装时访问织金旋律博客
Filename: "http://www.zhijinxuanlv.com/"; Description: "访问织金旋律博客"; Flags: postinstall shellexec skipifsilent unchecked; Check: RCPartnerChkZhijin;

[Code]
function RCPartnerChkWszjf(): Boolean;
begin  // 检查根目录是否有苦瓜甘甜博客链接，如果有则在完成页展示对应博客网站跳转项
  result:= false;
  if ((FileExists(ExpandConstant('{src}\苦瓜甘甜博客.lnk'))) or (FileExists(ExpandConstant('{src}\苦瓜甘甜博客.url')))) then begin
    result:= true;
  end;
end;

function RCPartnerChkZhijin(): Boolean;
begin  // 检查根目录是否有织金旋律博客链接，如果有则在完成页展示对应博客网站跳转项
  result:= false;
  if ((FileExists(ExpandConstant('{src}\织金旋律博客.lnk'))) or (FileExists(ExpandConstant('{src}\织金旋律博客.url')))) then begin
    result:= true;
  end;
end;
