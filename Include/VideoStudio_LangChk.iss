// 雨糖科技 Inno Setup 安装体验脚本 - Corel 会声会影程序安装检查
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于检测计算机中 Corel 会声会影已安装版本的语言支持安装情况。

[Code]
function VS{#MyAppMajorVersion}{#MyAppArchRC}LangCS(): Boolean;
begin  // 检查会声会影程序的语言支持（简中）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\zh-CN\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangCT(): Boolean;
begin  // 检查会声会影程序的语言支持（繁中）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\zh-TW\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangHK(): Boolean;
begin  // 检查会声会影程序的语言支持（繁中 - 香港）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\zh-HK\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangDE(): Boolean;
begin  // 检查会声会影程序的语言支持（德语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\de-DE\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangFR(): Boolean;
begin  // 检查会声会影程序的语言支持（法语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\fr-FR\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangIT(): Boolean;
begin  // 检查会声会影程序的语言支持（意大利语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\it-IT\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangJP(): Boolean;
begin  // 检查会声会影程序的语言支持（日语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\ja-JP\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangNL(): Boolean;
begin  // 检查会声会影程序的语言支持（荷兰语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\nl-NL\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangES(): Boolean;
begin  // 检查会声会影程序的语言支持（西班牙语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\es-ES\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangPL(): Boolean;
begin  // 检查会声会影程序的语言支持（波兰语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\pl-PL\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangBR(): Boolean;
begin  // 检查会声会影程序的语言支持（巴西葡萄牙语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\pt-BR\herrc.dll'))) then begin
    result:= true;
  end;
end;

function VS{#MyAppMajorVersion}{#MyAppArchRC}LangRU(): Boolean;
begin  // 检查会声会影程序的语言支持（俄语）       
  result:= false;
  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (FileExists(ExpandConstant('{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\ru-RU\herrc.dll'))) then begin
    result:= true;
  end;
end;

