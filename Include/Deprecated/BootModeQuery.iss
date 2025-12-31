// 雨糖科技 Inno Setup 安装体验脚本 - 操作系统启动模式检测
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于检测计算机操作系统的启动环境，以在驱动程序安装程序 Repack 中提供针对性提示。
// 由 YukiIsait (https://github.com/YukiIsait) 编写与启发，在此表示感谢。

[Files]
Source: "..\Plugins\BootModeQuery{#RCInnoExpPluginSignMark}.dll"; DestName: "BootModeQuery.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
//procedure GetBootMethod (var CurrentBootEnv: string);
//var  // 通过 PowerShell 获取当前系统的启动环境
  //CmdResultOutput, ExecStdout: ansistring; // Unicode 版本的 Inno Setup 必须把变量名称改成 ansistring
  //ResultCode: integer;
//begin
  //CmdResultOutput := ExpandConstant('{tmp}') + '\bootenvresult.txt';
  //Exec('cmd.exe', '/c powershell.exe $env:Firmware_Type >"' + CmdResultOutput + '"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode); // 必须用 cmd.exe 代理执行获取结果，用 powershell.exe 的话会遇到语言编码问题
  //if (LoadStringFromFile(CmdResultOutput, ExecStdout)) and not (ExecStdout = '') then
  //begin
    //CurrentBootEnv := ExecStdout; // 如果获取成功，就把获取值赋给 CurrentBootEnv 变量
  //end
    //else
  //begin
    //CurrentBootEnv := 'Unknown'; // 如果获取失败，或者获取到空值的时候，就给 CurrentBootEnv 变量赋值“Unknown”
  //end;
  //Log('[RainCandy Technology Inno Setup Experience] Info: Get boot method complete... ' + CurrentBootEnv);
//end;

function YukiIsaitGetBoot: Integer;
external 'GetBiosMode@files:BootModeQuery.dll stdcall setuponly';
