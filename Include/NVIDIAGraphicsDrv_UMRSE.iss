// 雨糖科技 Inno Setup 安装体验脚本 - NVIDIA 显示驱动程序安装相关
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于 NVIDIA 显示驱动程序修改版本。

[Files]
; 「安装前设备检测」需要使用的图片
Source: "E:\Development\NVIDIA\DeviceChkPic\*.bmp"; Flags: dontcopy nocompression;

[CustomMessages]

[Code]
var // 全局变量
//#########################安装模式窗口属性###########################
  preChkPage:TwizardPage;  //模式选择窗口
  preChkPageID:Integer;  //模式选择窗口 ID
  Button1: TNewButton;  //单选按钮
  Lbl1: TNewStaticText;  //文本标签
  BitmapImage1: TBitmapImage;  //位图图片
  Bitmap1FileName: String;  //位图图片路径
//####################################################################

//#########################安装模式窗口属性###########################
  postChkPage1:TwizardPage;  //模式选择窗口
  postChkPage1ID:Integer;  //模式选择窗口 ID
  Button2: TNewButton;  //单选按钮
  Lbl2: TNewStaticText;  //文本标签
  BitmapImage2: TBitmapImage;  //位图图片
  Bitmap2FileName: String;  //位图图片路径
//####################################################################

procedure CreateModPage;
begin // 自定义页面
  //######################释放所需文件##########################
  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then begin
    if (languageName = 'chinesesimp') then begin
      Bitmap1FileName := ExpandConstant('{tmp}\DeviceChk_ChineseSimp.bmp');
    end else begin
      Bitmap1FileName := ExpandConstant('{tmp}\DeviceChk_ChineseTrad.bmp');
    end;
    Bitmap2FileName := ExpandConstant('{tmp}\GPUZChk_Chinese.bmp');
  end else
  begin
    Bitmap1FileName := ExpandConstant('{tmp}\DeviceChk.bmp');
    Bitmap2FileName := ExpandConstant('{tmp}\GPUZChk.bmp');
  end;
  ExtractTemporaryFile(ExtractFileName(Bitmap1FileName));
  ExtractTemporaryFile(ExtractFileName(Bitmap2FileName));

  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then begin
    ExtractTemporaryFile('gpuz_chinese.exe');
    RenameFile(ExpandConstant('{tmp}\gpuz_chinese.exe'), ExpandConstant('{tmp}\gpuz.exe'));
  end else begin
    if (GPUZInstalled = false) then begin
      ExtractTemporaryFile('gpuz.exe');
    end;
  end;

  //Bitmap2FileName := ExpandConstant('{tmp}\20240518183147.bmp');
  //ExtractTemporaryFile(ExtractFileName(Bitmap2FileName));

  //###################################################################

  //######################创建安装前设备检查页面##########################
  preChkPage := CreateCustomPage(wpReady, CustomMessage('WDrvPreInstChk'), CustomMessage('WDrvInstChkDesc'));
  preChkPageID:= preChkPage.ID;

  Lbl1 := TNewStaticText.Create(preChkPage);
  Lbl1.Left := ScaleX(0);
  Lbl1.Top := ScaleY(0);
  Lbl1.Width := ScaleX(250);
  Lbl1.Height := ScaleY(50);
  Lbl1.Caption := FmtMessage(CustomMessage('WDrvPreInstChkNowNotice'), ['12']) + #13#13 + CustomMessage('WDrvChkCode12NextNotice');
  Lbl1.Parent := preChkPage.Surface;

  Button1 := TNewButton.Create(preChkPage);
  Button1.Caption := CustomMessage('WDrvDevMgrOpen');
  Button1.Top := Lbl1.Top + ScaleY(245);
  //Button1.Width := WizardForm.CalculateButtonWidth([Button.Caption]);
  Button1.Width := ScaleX(200);
  Button1.Height := ScaleY(25);
  Button1.OnClick := @ButtonOnClickDevMgmt;
  Button1.Parent := preChkPage.Surface;
  
  BitmapImage1 := TBitmapImage.Create(preChkPage);
  BitmapImage1.AutoSize := True;
  BitmapImage1.Bitmap.LoadFromFile(Bitmap1FileName);
  //BitmapImage1.Left := ScaleX(160);
  BitmapImage1.Top := Lbl1.Top + ScaleY(65);
  //BitmapImage1.Cursor := crHand;
  //BitmapImage1.OnClick := @BitmapImageOnClick;
  BitmapImage1.Parent := preChkPage.Surface;
  //###################################################################

  //######################创建安装后设备检查页面##########################
  postChkPage1 := CreateCustomPage(wpInstalling, CustomMessage('WDrvPostInstChk'), CustomMessage('WDrvInstChkDesc'));
  postChkPage1ID:= postChkPage1.ID;
    
  Lbl2 := TNewStaticText.Create(postChkPage1);
  Lbl2.Left := ScaleX(0);
  Lbl2.Top := ScaleY(0);
  Lbl2.Width := ScaleX(250);
  Lbl2.Height := ScaleY(50);
  Lbl2.Caption := FmtMessage(CustomMessage('WDrvPostInstChkNowNotice'), ['12']) + #13#13 + CustomMessage('RCTMsgChkFinishNextNotice');
  Lbl2.Parent := postChkPage1.Surface;

  Button2 := TNewButton.Create(postChkPage1);
  Button2.Caption := FmtMessage(CustomMessage('RCTISEToLaunch'), ['GPU-Z'])
  Button2.Top := Lbl1.Top + ScaleY(240);
  //Button2.Width := WizardForm.CalculateButtonWidth([Button.Caption]);
  Button2.Width := ScaleX(150);
  Button2.Height := ScaleY(25);
  Button2.OnClick := @ButtonOnClickGPUZ;
  Button2.Parent := postChkPage1.Surface;

  BitmapImage2 := TBitmapImage.Create(postChkPage1);
  BitmapImage2.AutoSize := True;
  BitmapImage2.Bitmap.LoadFromFile(Bitmap2FileName);
  //BitmapImage2.Left := ScaleX(160);
  BitmapImage2.Top := Lbl2.Top + ScaleY(75);
  //BitmapImage2.Cursor := crHand;
  //BitmapImage2.OnClick := @BitmapImageOnClick;
  BitmapImage2.Parent := postChkPage1.Surface;
    
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var // 在自定义页面中点击下一步后，“准备安装”应询问用户是否遇到了相关问题，如果遇到了则告知用户处理办法，同时终止安装过程
  FirmwareType: Integer;
begin
  { TaskDialogMsgBox isn't a class but showing it anyway since it fits with the theme }

  Log('[Windose Installer] Info: Gathering boot mode information...');
  GetFirmwareType(FirmwareType); // 这里调用安装体验总 iss 中的过程，获取当前系统启动环境
  Log('[Windose Installer] Info: Gathered boot mode code is: ' + IntToStr(FirmwareType) + '.');

  if (TaskDialogMsgBox(CustomMessage('WDrvPreInstChk'),      // 询问弹窗
                      CustomMessage('WDrvPreInstChkAskUser'),   
                      mbInformation,
                      MB_YESNOCANCEL, [CustomMessage('WDrvPreInstChkSameErrFound') + #10 + FmtMessage(CustomMessage('WDrvInstChkCodeFoundDesc'), ['12']), CustomMessage('WDrvPreInstChkSameErrNotFound') + #10 + CustomMessage('WDrvPreInstChkSameErrNotFoundDesc')],
                      IDYES) = IDYES) then
  begin
    if (FirmwareType = 1) then begin
      Result := CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking') + #13 + CustomMessage('WDrvFMBootModeLegacy') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeHowTo') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['2']) + #13 +CustomMessage('WDrvFMBootModeDisableCSM') + #13 + CustomMessage('WDrvFMBootModeLegacyDisableWarning') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra') + #13#13 + CustomMessage('RCTMsgRestartInstAfterAction');
    end;
    if (FirmwareType = 2) then begin
      Result := CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking')+ #13 + CustomMessage('WDrvFMBootModeUEFI') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 + CustomMessage('WDrvFMBootModeDisableCSM') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra') + #13#13 + CustomMessage('RCTMsgRestartInstAfterAction');
    end;
    if not (FirmwareType = 1) and not (FirmwareType = 2) then begin
      Result := CustomMessage('WDrvFMConfHasError') + #13 + CustomMessage('WDrvFMConfErrIGFXNotWorking')+ #13 + CustomMessage('WDrvFMBootModeUnknown') + CustomMessage('RCTMsgFollowSteps') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['1']) + #13 +CustomMessage('WDrvFMBootModeHowTo') + #13#13 + FmtMessage(CustomMessage('RCTMsgStepNumber'), ['2']) + #13 +CustomMessage('WDrvFMBootModeDisableCSM') + #13 + CustomMessage('WDrvFMBootModeLegacyDisableWarning') + #13#13 + CustomMessage('WDrvFMBootModeHowToASUSExtra') + #13#13 + CustomMessage('RCTMsgRestartInstAfterAction');
    end;
  end else begin
    Result := '';
  end;
end;

function NVIDIADrv_RequireReboot(): Boolean;
begin  // 检查是否已经存在 NVIDIA 重启占位符注册表     
  result:= false;
  if (RegKeyExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\NVIDIA_RebootNeeded_{CE1CA72E-7C77-4b69-A5D3-2C4CFCD625FD}')) then begin
    result:= true;
  end;
end;

procedure NijikaExitCleanTempNV();
begin
  DelTree(ExpandConstant('{tmp}\Display.Driver'), True, True, True);
  DelTree(ExpandConstant('{tmp}\Display.Nview'), True, True, True);
  DelTree(ExpandConstant('{tmp}\Display.Optimus'), True, True, True);
  DelTree(ExpandConstant('{tmp}\FrameViewSDK'), True, True, True);
  DelTree(ExpandConstant('{tmp}\GFExperience'), True, True, True);
  //DelTree(ExpandConstant('{tmp}\MSVCRT'), True, True, True);
  //DelTree(ExpandConstant('{tmp}\NvCamera'), True, True, True);
  //DelTree(ExpandConstant('{tmp}\NvContainer'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NVI2'), True, True, True);
  DelTree(ExpandConstant('{tmp}\NVPCF'), True, True, True);
  DelTree(ExpandConstant('{tmp}\PhysX'), True, True, True);
  DelTree(ExpandConstant('{tmp}\PPC'), True, True, True);
  DelTree(ExpandConstant('{tmp}\RootCATrust'), True, True, True);
  DelTree(ExpandConstant('{tmp}\ShadowPlay'), True, True, True);
end;

procedure NijikaExitIfNVNeedReboot();
begin  // 如果发现安装程序要求重启计算机才能继续安装，则直接退出安装程序，以避免英伟达安装程序直接重启系统，而安装体验还在后台阻止重启的情况发生
  if (NVIDIADrv_RequireReboot = true) then begin
    Log('[Windose Installer] Info: NVIDIA Installer requires system reboot. Now exiting setup.');
    NijikaExitCleanTempNV();
    ExitProcess(0);
  end;
end;
