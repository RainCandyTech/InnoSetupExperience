// 雨糖科技 Inno Setup 安装体验脚本 - Corel 会声会影程序安装检查
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于检测计算机中 Corel 会声会影的已安装版本。

[Code]
function DS01IA32CVS(): Boolean;
begin  // 检查是否安装会声会影 @ 影音宝典 2010 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Corel\GoldenGate\Version1\Installer,Path}\UVS.exe'))) then begin
    result:= true;
  end;
end;

function VS11IA32Main(): Boolean;
begin  // 检查是否安装会声会影 11 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Ulead VideoStudio\11.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS12IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X2 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio\12.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS13IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X3 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\13.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS14IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X4 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\14.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS15IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X5 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\15.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS16IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X6 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\16.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS17IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X7 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\17.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS17AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 X7 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\17.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS18IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X8 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\18.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS18AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 X8 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\18.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS19IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X9 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\19.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS19AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 X9 64 位主程序       
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\19.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS20IA32Main(): Boolean;
begin  // 检查是否安装会声会影 X10 32 位主程序
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\20.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS20AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 X10 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\20.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS21IA32Main(): Boolean;
begin   // 检查是否安装会声会影 2018 32 位主程序
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\21.0\Installer,Path}\vstudio.exe')) then begin
    result:= true;
  end;
end;

function VS21AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 2018 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\21.0\Installer,Path}\vstudio.exe'))) then begin
    result:= true;
  end;
end;

function VS22AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 2019 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\22.0\Installer,Path}\vstudio.exe'))) then begin
    result := true;
  end;
end;

function VS23AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 2020 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\23.0\Installer,Path}\vstudio.exe'))) then begin
    result := true;
  end;
end;

function VS24AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 2021 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\24.0\Installer,Path}\vstudio.exe'))) then begin
    result := true;
  end;
end;

function VS25AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 2022 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\25.0\Installer,Path}\vstudio.exe'))) then begin
    result := true;
  end;
end;

function VS26AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 2023 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\26.0\Installer,Path}\vstudio.exe'))) then begin
    result := true;
  end;
end;

function VS27AMD64Main(): Boolean;
begin  // 检查是否安装会声会影 Next 64 位主程序
  result:= false;
  if (IsWin64) and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\27.0\Installer,Path}\vstudio.exe'))) then begin
    result := true;
  end;
end;
