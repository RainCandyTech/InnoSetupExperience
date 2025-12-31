// 雨糖科技 Inno Setup 安装体验脚本 - Corel 会声会影附加程序安装检查
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于检测计算机中 Corel 会声会影附加程序的已安装版本。

[Code]
function T3DAMD64Main(): Boolean;
begin  // 检查是否安装 3D 标题编辑器
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\VideoStudio\3DTitleEditor,InstallDir}\3DTitles.exe'))) then begin
    result:= true;
  end;
end;

function HLReelAMD64Main(): Boolean;
begin  // 检查是否安装高光时刻
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Highlight Reel,Main Path}\Highlight Reel.exe'))) then begin
    result:= true;
  end;
end;
