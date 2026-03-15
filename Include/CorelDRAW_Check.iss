// 雨糖科技 Windose Installer 安装体验脚本 - CorelDRAW 程序安装检查
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于检测计算机中 CorelDRAW 的已安装版本。

[Code]
function DR20AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2018 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\20.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\20.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR21AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2019 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\21.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\21.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR22AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2020 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\22.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\22.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR23AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2021 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\23.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\23.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR24AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2022 / 2023 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\24.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\24.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR25AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2024 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\25.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\25.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR26AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2025 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\26.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\26.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;

function DR27AMD64Main(): Boolean;
begin  // 检查是否安装 CorelDRAW 2026 64 位主程序
  result:= false;
  if (IsWin64) and ((FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\CorelDRAW\27.0,ProgramsDir}\..\Draw\CorelDRW.exe'))) or (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel DESIGNER\27.0,ProgramsDir}\..\Draw\CorelDRW.exe')))) then begin
    result:= true;
  end;
end;
