// 雨糖科技 Windose Installer 安装体验脚本 - NVIDIA 显示驱动程序安装相关
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于 NVIDIA 显示驱动程序的封装版本。

[Files]
; 「代码 12」错误检测器 by df1050（第二个是测试用的）
Source: "..\Plugins\Code12Check.exe"; Flags: dontcopy nocompression;
//Source: "..\Plugins\Code31Check.exe"; DestName:"Code12Check.exe"; Flags: dontcopy nocompression;

[CustomMessages]

[Code]
// 在“准备安装”阶段检查用户电脑是否有设备遇到了代码 12 的问题，如果遇到了则告知用户处理办法，同时终止安装过程
function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  Code12DetectResult: AnsiString;
  ResultCode: integer;
begin
  Log('[Windose Installer] Info: Now checking devices with "Code 12" issue...');
  ExtractTemporaryFile('Code12Check.exe');
  ShellExec('', ExpandConstant('{tmp}\Code12Check.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);

  // 读取结果文件，如果失败，则在安装体验报错
  if (LoadStringFromFile(ExpandConstant('{tmp}\C12DetectResult.txt'), Code12DetectResult)) and (Pos('STATUS_CHECK_FAILED', Code12DetectResult) > 0) then
  begin
    Log('[Windose Installer] Error: Devices with "Code 12" issue is detected!');
    FirmwareDetection;
    if (FirmwareType = 1) then begin
      MsgBox(CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking') + #13 + CustomMessage('WDrvFMBootModeLegacy') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeHowTo') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['2']) + #13 + CustomMessage('WDrvFMBootModeDisableCSM') + #13 + CustomMessage('WDrvFMBootModeLegacyDisableWarning') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra'), mbError, MB_OK);
      //Result := CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking') + #13 + CustomMessage('WDrvFMBootModeLegacy') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeHowTo') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['2']) + #13 + CustomMessage('WDrvFMBootModeDisableCSM') + #13 + CustomMessage('WDrvFMBootModeLegacyDisableWarning') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra');
    end;
    if (FirmwareType = 2) then begin
       MsgBox(CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking') + #13 + CustomMessage('WDrvFMBootModeUEFI') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeDisableCSM') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra'), mbError, MB_OK);
     //Result := CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking')+ #13 + CustomMessage('WDrvFMBootModeUEFI') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeDisableCSM') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra');
    end;
    if not (FirmwareType = 1) and not (FirmwareType = 2) then begin
      MsgBox(CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking') + #13 + CustomMessage('WDrvFMBootModeUnknown') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeHowTo') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['2']) + #13 +CustomMessage('WDrvFMBootModeDisableCSM') + #13 + CustomMessage('WDrvFMBootModeLegacyDisableWarning') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra'), mbError, MB_OK);
      //Result := CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking')+ #13 + CustomMessage('WDrvFMBootModeUnknown') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 +CustomMessage('WDrvFMBootModeHowTo') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['2']) + #13 + CustomMessage('WDrvFMBootModeDisableCSM') + #13 + CustomMessage('WDrvFMBootModeLegacyDisableWarning') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra');
    end;
    Result := CustomMessage('WDrvErrorCannotContinue');
  end else begin
    Log('[Windose Installer] Info: The "Code 12" issue detection is passed. Go ahead!');
    Result := '';
  end;
end;

// 检查是否已经存在 NVIDIA 重启占位符注册表
function NVRequireReboot(): Boolean;
begin
  result:= false;
  if (RegKeyExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\NVIDIA_RebootNeeded_{CE1CA72E-7C77-4b69-A5D3-2C4CFCD625FD}')) then begin
    result:= true;
  end;
end;

// 安装程序结束后，清理临时文件
procedure CleanTempNV();
begin
  DelTree(ExpandConstant('{tmp}\Display.Driver'), True, True, True);
  DelTree(ExpandConstant('{tmp}\Display.Nview'), True, True, True);
  DelTree(ExpandConstant('{tmp}\Display.Optimus'), True, True, True);
  DelTree(ExpandConstant('{tmp}\FrameViewSDK'), True, True, True);
  DelTree(ExpandConstant('{tmp}\GFExperience'), True, True, True);
  DelTree(ExpandConstant('{tmp}\GFExperience.NvStreamSrv'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NvApp'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NvApp.MessageBus'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NvBackend'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NvCamera'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NvContainer'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NvCpl'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NVI2'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NVPCF'), True, True, True);
  DelTree(ExpandConstant('{tmp}\PhysX'), True, True, True);
  DelTree(ExpandConstant('{tmp}\PPC'), True, True, True);
  DelTree(ExpandConstant('{tmp}\RootCATrust'), True, True, True);
  DelTree(ExpandConstant('{tmp}\ShadowPlay'), True, True, True);
end;

// NVIDIA 安装程序退出后执行的操作
procedure NVSetupExitAction();
var
  NVSMIResult: AnsiString;
  ErrorCode: Integer;
begin
  // 如果发现安装程序要求重启计算机才能继续安装，则直接退出安装程序，以避免英伟达安装程序直接重启系统，而安装体验还在后台阻止重启的情况发生
  //if (NVRequireReboot = true) then begin
    //Log('[Windose Installer] Info: NVIDIA Installer requires system reboot. Now exiting setup.');
    //CleanTempNV();
    //ExitProcess(0);
  //end;
  
  // 不需要重启的话，我们就检查 NVIDIA-SMI 是否有报错，我们可以依此判断设备是否正常安装
  if (NVRequireReboot = false) then
  begin
    ShellExec('', ExpandConstant('{sysnative}\cmd.exe'), ExpandConstant('/c nvidia-smi.exe >> nvsmiresult.txt'), ExpandConstant('{tmp}'), SW_HIDE, ewWaitUntilTerminated, ErrorCode);
  
    if LoadStringFromFile(ExpandConstant('{tmp}\nvsmiresult.txt'), NVSMIResult) then
    begin  // 读取结果文件
      if Pos('NVIDIA-SMI has failed because it couldn' + #39 + 't communicate with the NVIDIA driver.', NVSMIResult) > 0 then
      begin  // NVIDIA-SMI 报错了
        Log('[Windose Installer] Error: Driver load failed, there might be some thing wrong with the GPU!');
        MsgBox(CustomMessage('WDrvGPUStateError'), mbError, MB_OK);
      end;
    end;
  end;
end;
