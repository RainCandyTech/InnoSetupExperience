// 雨糖科技 Inno Setup 安装体验脚本 - MathType 程序安装检查
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于检测计算机中 MathType 的已安装版本。

[Code]
function MathType5Main(): Boolean;
begin  // 检查是否安装 MathType 5 主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM\SOFTWARE\Design Science\DSMT5\Directories,ProgDir}\MathType.exe'))) then begin
    result:= true;
  end;
end;

function MathType6Main(): Boolean;
begin  // 检查是否安装 MathType 6 主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM\SOFTWARE\Design Science\DSMT6\Directories,ProgDir}\MathType.exe'))) then begin
    result:= true;
  end;
end;

function MathType7Main(): Boolean;
begin  // 检查是否安装 MathType 7 主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM\SOFTWARE\Design Science\DSMT7\Directories,ProgDir}\MathType.exe'))) then begin
    result:= true;
  end;
end;
