// 雨糖科技 Windose Installer 安装体验脚本 - 主要函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码为雨糖科技安装体验脚本的主要函数。

#define RCInnoExpVer "20260126"

[Messages]
// 20251114_RainCandyTech_ISEMain
AboutSetupNote=Built with Windose Installer Version {#RCInnoExpVer}.

[CustomMessages]
// 20241206_RainCandyTech_InnoSetupExp_Strings
// 对于中文，组件名称以英文打头的话，应在前面加空格
RCTISEMyAppName={#MyAppName}
RCTISEMainApp=Main application
RCTISEInstNormal=Normal installation
RCTISEInstWithoutNet=Disable network features
RCTISEInstOnlineVer=Install online version
RCTISEInstOfflineVer=Install offline version
RCTISEDefaultInstType=Default installation
//RCTISEFullInstType=Full installation
RCTISECustomInstType=Custom installation
RCTISEExtraComponents=Extra components
RCTISEExtraFeature=Extra features
RCTISEExpFeature=Experimental features
RCTISEFeatureIsExp=Experimental
RCTISEFeatureIsDebug=Debug
RCTISEToInst=Install %1
RCTISEToEnable=Enable %1
RCTISEToEnablePremium=Enable premium features for %1
RCTISEToLaunch=Launch "%1"
RCTISEFileFormatSupport=%1 format support
RCTISELibrarySupport=%1 support library
RCTISEDisableOnlineSvc=Disable online services
RCTISERunInstPrepare=Preparing installation. Please wait...
RCTISERunMainAppPrepare=Preparing main application. Please wait...
RCTISERunAppSetupForUser=Please proceed to the next step of installation in the pop-up window...
RCTISERunFinishingInst=Completing installation. Please wait...
RCTISERunExtraSetupPrepare=Preparing%1. Please wait...
RCTISERunIconSetup=Setting icons. Please wait...
RCTISERunInstCert=Installing certificates. Please wait... 
RCTISERunRegFonts=Registering fonts. Please wait... 
RCTISERunRegApp=Registering application. Please wait... 
RCTISEEnablePremium=Enable premium features
RCTISEInstAsPremium=Install with premium features
RCTISEDisableFeature=Disable this feature
RCTISEOSArchARM64=ARM64 architecture OS
RCTISEAssocFileExtension=Associate %1 file extension
RCTISEHotfix=Hotfixes (Consideration is needed)
RCTISERunInstHotfix=Installing Hotfixes. Please wait...

// RainCandyTech_InnoSetupExp_Messages
RCTMsgSetupContinue=Setup will now contiune.
RCTMsgSetupExit=Setup will now exit.
RCTMsgAskContinue=Do you want to continue?
RCTMsgDebugNotice=This version of the application is for testing purposes only. Please send your feedback to RainCandy Technology for any problems found during the test process. Thank you!
RCTMsgRebootRequired=You must restart your computer before the installation. Please save all your work, restart your computer, and then run the setup again.
RCTMsgAppAlreadyInst=It seems that you have already installed %1 application on your computer.
RCTMsgAskUserPlayBGM=Do you want to play the background music of the setup?%n%nClick Yes, setup will play its background music during the installation. %nClick No, the music will not be played.
RCTMsgWarnUserBGMWillPlay=Please notice that this installer have its own background music, and it will start playing when the setup wizard is loaded.%n%nTo avoid disturbing your surroundings, you should now immediately adjust the system volume or speaker volume, or mute / turn off the speakers.
RCTMsgRestartInstAfterAction=After completing the operation, please run the setup again.
RCTMsgOSNotMeetRequirement=Your computer is running an operating system that does not meet the system requirements (%1).
RCTMsgOSRequirement=This application requires %1 operating system.
RCTMsgOSMinRequirement=This application requires %1 or newer.
RCTMsgOSNotSupportNET48=The current Windows version running on your computer does not support Microsoft .NET Framework 4.8. You may experience problems since it is needed for some components of the application. To solve the problem, upgrade the operating system to Windows 10 Version 1607 or newer.
RCTMsgAppMayNotFuncOnThisOS=The application may works on this operating system, but we cannot guarantee that you will not experience any unexpected problems.
RCTMsgAppTryContinueInst=Setup will now try to continue the installation, please contact us for any problems. Thank you!
RCTMsgMustUninstExistVer=Please uninstall the existing version of the application before installing.
RCTMsgPatchAppNotExistNotice=We cannot find %1 application on your computer.
RCTMsgPatchAppNotExistChk=Make sure you have installed the application properly, and then try again.
RCTMsgWinStoreSvcChkFailed=One or more of the necessary services used to deploy Microsoft Store apps have been disabled and may affect the installation of %1. We strongly recommend you to enable these following services before proceeding with the installation.
RCTMsgChkFinishNextNotice=Once the check is complete, click "Next" to continue.
RCTMsgFollowSteps= Please follow these steps:
RCTMsgStepNumber=Step %1:
RCTMsgRequireAMD64=This application requires an x86_64 / AMD64 architecture operating system.
RCTMsgFreeProvideNotice=Important: This application is provided "as is" FOR FREE.%nIf you paid for this application and need assistance, please contact the seller directly. 
RCTMsgWebGetUpdateNotice=You can get the latest version or its future updates of the application at RainCandy Technology Website (http://raincandy.tech/).
RCTMsgNewInstDelConfNotice=Do you want to perform a clean installation? This will delete the existing user configurations.
RCTMsgDelUserConfFailed=Failed to delete user configurations.
RCTMsgAppStillRunning=Setup has detected that %1 is still running.
RCTMsgAppNoticeUserExit=Please quit the application, then run the setup again.
RCTMsgPatchAppVerNotSupport=The version of %1 application installed on your computer does not meet the requirements.
RCTMsgPatchAppCurrentVer=The version of application that you currently have installed is:

// RainCandyTech_WinDrv_Strings
WinDrvSignModeSelect=Signature mode select
WinDrvSignModeOption=Signature mode %1
WDrvDeviceManager=Device Manager
WDrvDevMgrOpen=Open Device Manager
WinDrvHDAudio=HD Audio Driver
WinDrvUSBC=USB-C Driver
WDrvPreInstChk=Pre-installation device issue check
WDrvPostInstChk=Post-installation device issue check
WDrvInstChkDesc=Follow these steps below to check the devices on your computer.
WDrvPreInstChkAskUser=Did you find any of the errors described above in the Device Manager?
WDrvPreInstChkSameErrFound=I'm seeing the same error issue.
WDrvInstChkCodeFoundDesc=Find out what to do next.%nYou should only click this button if you find a specific error for "Code %1".
WDrvPreInstChkSameErrNotFound=I didn't find any issue, or the issue was not the same as the one mentioned earlier in the setup.
WDrvPreInstChkSameErrNotFoundDesc=Setup will continue.%nIf you have other error issues, click this button as well. Once the driver installation is complete, these issues may be resolved.
WDrvPreInstChkNowNotice=Now, you need to open the Device Manager and see if there are any devices with exclamation mark icon in%nthe "Display adapters" category. If so, double-click the icon to check if it has a "Code %1" error.
WDrvPostInstChkNowNotice=Now, you need to launch GPU-Z to confirm your graphics card is working properly.%nPlease select your NVIDIA graphics card in GPU-Z and check whether the clock and memory info could be%nread by the application.%n%nIf the application couldn't get the proper information, there might be some issues with your graphics card,%nlike an unplugged power cable or a damaged graphics card.
WDrvFMConfHasError=It seems that there is a problem with your computer's current firmware / UEFI BIOS configuration.
//WDrvFMBootModeIs=The current operating system boot mode is: 
WDrvFMBootModeHowTo=Please convert the partition table of the disk containing the operating system to GPT/GUID format. You can use tools such as Windows recovery environment / installation media, MBR2GPT utility and so on. Then, make sure to perform a system boot repair to complete the conversion to UEFI boot mode.
//WDrvFMBootModeUEFIIgnore=(Skip this step if you are already using UEFI boot mode.)
WDrvFMBootModeDisableCSM=Enter the UEFI BIOS settings, then find and disable the "Compatibility Support Module" (CSM) option.
WDrvFMBootModeLegacyDisableWarning=Important: The operating system WILL NOT BOOT if you disabled this option without performing the first step.
WDrvFMBootModeHowToASUSExtra=For some particular motherboard model, like some H81 or B85 motherboard by ASUS, it is also necessary to edit some settings in the UEFI BIOS Utility, such as "Primary Display" & "iGPU Multi-Monitor".
WDrvFMBootModeLegacy=You are now using legacy BIOS boot mode. 
WDrvFMBootModeUEFI=You are now using UEFI boot mode.
WDrvFMBootModeUnknown=We can't determine which boot mode you're using.
RCTDisplayDrvUninstInstruction=In case of you are having trouble, try to uninstalling these existing drivers, then run the setup again. You may need some tools like "Display Driver Uninstaller" (DDU).
WDrvDenyUnspecDeviceInstWarning=The device installation service of the operating system has been disabled, or a Group Policy rule has been set to prohibit device installation under specific circumstances. This issue may cause driver installation to fail.%n%nTo resolve this issue, please enable the relevant service and remove the device installation restrictions in the Group Policy Editor, then restart your computer.
WDrvChkCode12NextNotice=Under normal circumstances, this error should not occur.%nOnce the check is complete, click "Next" to continue. Then, setup will ask you about your current situation.
WDrvFMConfErrIGFXNotWorking=This issue will cause integrated graphics and GPU devices that do not support display output (like NVIDIA P106-100 and CMP 40HX) to not work properly.
WDrvPublisherType=Install %1 driver

// 20240526_RainCandyTech_AppSolution_Strings
RCTASEditNotAvailable=Edit Function not available
//RCTASPrintNotAvailable=Print Function not available

[Run]

[Code]
var // 全局变量
  languageName: String;
  Version: TWindowsVersion;
  ProcessName: String;
  WinInstType: String;
  DebugVersion: Boolean;
  NeedStoreApp: Boolean;
  RCTech_DoNotPlayBGM: Boolean;
  IsSetupIncludingBGM: Boolean;
  IsSetupBGMAllowNotPlay: Boolean;
  IsShowFreeProvideMsg: Boolean;

// 安装程序加载时，对变量进行初始化
procedure AiMofVarInit;
begin
  DebugVersion := {#MyAppIsDebugVersion};
  RCTech_NeedStoreApp := {#MyAppIsNeedStoreApp};
  languageName := ActiveLanguage();
  ProcessName  :=  ExtractFileName(ParamStr(0));
  RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'InstallationType', WinInstType);
  IsSetupIncludingBGM := {#MyAppSetupBGM};
  IsSetupBGMAllowNotPlay := {#RCBGMAllowNotPlay}
  IsShowFreeProvideMsg := {#MyAppShowFreePrevideMsg};
  Log('[Windose Installer] Info: Variables initialization complete.');
end;
  
procedure SetMarqueeProgress(Marquee: Boolean);
begin  // 在用户等待安装程序执行操作的时候，可以通过这个滚动进度条让用户感知到安装程序没有卡死
  if Marquee then
  begin
    WizardForm.ProgressGauge.Style := npbstMarquee;
  end
    else
  begin
    WizardForm.ProgressGauge.Style := npbstNormal;
  end;
end;

function RCTIsWinClient(): Boolean;
var 
  WinInstType: String;
begin  // 检查系统是否为 Windows 客户端版本
  RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'InstallationType', WinInstType);
  if not (WinInstType = 'Server') then
  begin
    result := true;
  end;
end;

function RCTIsWin8Client(): Boolean;
var 
  Version: TWindowsVersion;
begin  // 检查是否 Windows 8 Client 版本（主要针对 WPS Office 的系统检测）
  GetWindowsVersionEx(Version);
  if (Version.NTPlatform) and (Version.Major = 6) and (Version.Minor > 1) and (RCTIsWinClient = true) then
  begin
    //Log('[Windose Installer] Info: Windows 8.x Client is detected.');
    result := true;
  end;
end;

function RCTIs32BitOS(): Boolean;
begin  // 检查安装体验报告的系统架构是否为 32 位
  result:= false;
  if not IsWin64 then begin
    result:= true;
  end;
end;

function RCTIs64BitOS(): Boolean;
begin  // 检查安装体验报告的系统架构是否为 64 位
  result:= false;
  if IsWin64 then begin
    result:= true;
  end;
end;

function RCTIsArchARM64(): Boolean;
begin  // 检查安装体验报告的系统架构是否为 ARM64
  result:= false;
  if IsArm64 then begin
    result:= true;
  end;
end;

function RCTIsSilent(): Boolean;
var  // 检查安装程序是否以静默方式运行
  j: Integer;
begin
  Result := False;
  for j := 1 to ParamCount do
    if (CompareText(ParamStr(j), '/silent') = 0) or (CompareText(ParamStr(j), '/verysilent') = 0) then
    begin
      Result := True;
      Break;
    end;
end;

// 调用系统函数实现进程结束功能，因为在别的地方直接 Exit; 压根不好使
procedure ExitProcess(exitCode:integer);
external 'ExitProcess@kernel32.dll stdcall';

// 安装程序加载期间 BGM 相关检测与询问
procedure BGMPlayDetection;
begin
  if (IsSetupIncludingBGM = true) then begin
    // 如果静默安装或找到禁止播放 BGM 占位符，则禁止 BGM 播放
    if (RCTIsSilent = true) or (FileExists(ExpandConstant('{src}\NoBGM_RCTechSetup'))) then begin
      Log('[Windose Installer] Info: Config "NoBGM_RCTechSetup" detected, disable music playing!');
      RCTech_DoNotPlayBGM := True;
    end else begin
      if (IsSetupBGMAllowNotPlay = true) then begin
        // 如果允许不播放 BGM，则弹窗询问用户是否播放
        if (SuppressibleMsgBox(CustomMessage('RCTMsgAskUserPlayBGM'), mbInformation, MB_YESNO, MB_YESNO) = IDNO) then begin
          Log('[Windose Installer] Info: User choosed not to play music.');
          RCTech_DoNotPlayBGM := True;
        end;
      end else begin
        // 如果不允许不播放 BGM，则弹窗提示进行提醒
          SuppressibleMsgBox(CustomMessage('RCTMsgWarnUserBGMWillPlay') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
      end;
    end;
  end;
end;

// 测试版弹窗
procedure DebugVersionNotice;
begin
  if (DebugVersion = true) then begin
    Log('[Windose Installer] Info: This application is a debug version.');
    SuppressibleMsgBox(CustomMessage('RCTMsgDebugNotice') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);
  end;
end;

// 按原样免费提供的相关提示
procedure ShowFreeProvideMsg;
begin
  if (IsShowFreeProvideMsg = true) then begin
    SuppressibleMsgBox(CustomMessage('RCTMsgFreeProvideNotice')+ #13#13 + CustomMessage('RCTMsgWebGetUpdateNotice') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
  end;
end;

// 安装体验初始化
procedure AiMofSetupInit;
begin
  Log('[Windose Installer] Info: Initializing Setup Experience...');
  AiMofVarInit;
  GetWindowsVersionEx(Version);
  Log('[Windose Installer] Info: The process name of setup is: ' + ProcessName);
end;

// 程序检查完成后，继续安装体验初始化
procedure AiMofPostChkInIt;
begin
  ShowFreeProvideMsg;
  BGMPlayDetection;
  DebugVersionNotice;
end;
