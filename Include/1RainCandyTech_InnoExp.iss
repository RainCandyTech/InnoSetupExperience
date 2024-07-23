// 雨糖科技 Inno Setup 安装体验脚本 - 主要函数
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码为雨糖科技 Inno Setup 安装体验脚本的主要函数。

[Messages]
// 20240610_RainCandyTech_ISEMain
AboutSetupNote=Built with RainCandy Technology Inno Setup%nExperience Version {#RCInnoExpVer}.

[CustomMessages]
// 20240723_RainCandyTech_InnoSetupExp_Strings
// 对于中文，组件名称以英文打头的话，应在前面加空格
RCTISEMainApp=Main Application
RCTISEInstNormal=Normal Installation
RCTISEInstWithoutNet=Disable Network Features
RCTISEInstOnlineVer=Install Online Version
RCTISEInstOfflineVer=Install Offline Version
RCTISEDefaultInstType=Default Installation
RCTISEExtraComponents=Extra Components
RCTISEExtraFeature=Extra Features
RCTISEExpFeature=Experimental Features
RCTISEFeatureIsExp=Experimental
RCTISEFeatureIsDebug=Debug
RCTISEToInst=Install %1
RCTISEToEnable=Enable %1
RCTISEToEnablePremium=Enable Premium Features for %1
RCTISEToLaunch=Launch %1
RCTISEFileFormatSupport=%1 Format Support
RCTISELibrarySupport=%1 Support Libary
RCTISEDisableOnlineSvc=Disable Online Services
RCTISERunInstPrepare=Preparing Installation. Please wait...
RCTISERunAppSetupForUser=Please proceed to the next step of installation in the pop-up window...
RCTISERunFinishingInst=Completing installation. Please wait...
RCTISERunExtraSetupPrepare=Preparing %1. Please wait...
RCTISERunIconSetup=Setting icons. Please wait...
RCTISERunInstCert=Installing Certificates. Please wait... 
RCTISEEnablePremium=Enable Premium Features
RCTISEInstAsPremium=Install with Premium Features
RCTISEDisableFeature=Disable this feature
RCTISEOSArchARM64=ARM64 architecture OS
RCTISEAssocFileExtension=Associate %1 file extension

// 20240723_RainCandyTech_InnoSetupExp_Messages
RCTMsgSetupContinue=Setup will now contiune.
RCTMsgSetupExit=Setup will now exit.
RCTMsgAskContinue=Do you want to continue?
RCTMsgDebugNotice=This version of the application should only be used by RainCandy Technology and our friends for testing purposes. Please send your feedback to RainCandy Technology for any problems found during testing. Thank you!
RCTMsgRebootRequired=You must restart your computer before the installation. Please save all your work, restart your computer, and then run the setup again.
RCTMsgAppAlreadyInst=It seems that you have already installed %1 on your computer.
RCTMsgAskUserPlayBGM=Do you want to play the background music of the setup?%n%nClick Yes, Setup will play its background music during the installation. %nClick No, the music will not be played.
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
RCTMsgWebGetUpdateNotice=You can get the latest version or its future updates of the application at RainCandy Technology website (http://raincandy.tech/).

// 20240629_RainCandyTech_WinDrv_Strings
WinDrvSignModeSelect=Signature Mode Select
WinDrvSignModeOption=Signature Mode %1
WDrvDeviceManager=Device Manager
WDrvDevMgrOpen=Open Device Manager
WinDrvHDAudio=HD Audio Driver
WDrvPreInstChk=Pre-installation Device Issue Check
WDrvPostInstChk=Post-installation Device Issue Check
WDrvInstChkDesc=Follow the steps below to check the devices on your computer.
WDrvPreInstChkAskUser=Did you find any of the errors described above in the Device Manager?
WDrvPreInstChkSameErrFound=I'm seeing the same error issue.
WDrvInstChkCodeFoundDesc=Find out what to do next.%nYou should only click this button if you find a specific error for "Code %1".
WDrvPreInstChkSameErrNotFound=I didn't find any issue, or the issue was not the same as the one mentioned earlier in the setup.
WDrvPreInstChkSameErrNotFoundDesc=Setup will continue.%nIf you have other error issues, click this button as well. Once the driver installation is complete, these issues may be resolved.
WDrvPreInstChkNowNotice=Now, you need to open the Device Manager and see if there are any devices with exclamation mark icon in%nthe "Display Adapters" category. If so, double-click the icon to check if it has a "Code %1" error.
WDrvPostInstChkNowNotice=Now, you need to launch GPU-Z to confirm your graphics card is working properly.%nPlease select your NVIDIA graphics card in GPU-Z and check whether the clock and memory info could be%nread by the application.%n%nIf the application couldn't get the proper information, there might be some issues with your graphics card,%nlike an unplugged power cable or a damaged graphics card.
WDrvFMConfHasError=It seems that there is a problem with your computer's current firmware / UEFI BIOS configuration.
WDrvFMBootModeIs=The current operating system boot mode is: 
WDrvFMBootModeHowTo=Please convert the partition table of the hard drive containing the operating system to GPT/GUID format. You can use tools such as Windows recovery environment / installation media, MBR2GPT utility and so on. Then, make sure to perform a system boot repair to complete the conversion to UEFI boot mode.
//WDrvFMBootModeUEFIIgnore=(Skip this step if you are already using UEFI boot mode.)
WDrvFMBootModeDisableCSM=Enter the UEFI BIOS settings, then find and disable the "Compatibility Support Module" (CSM) option.
WDrvFMBootModeLegacyDisableWarning=Important: The operating system WILL NOT BOOT if you disabled this option without performing the first step.
WDrvFMBootModeHowToASUSExtra=For some particular motherboard model, like some H81 or B85 motherboard by ASUS, it is also necessary to edit some settings in the UEFI BIOS Utility, such as "Primary Display" & "iGPU Multi-Monitor".
WDrvFMBootModeLegacy=You are now using legacy BIOS boot mode. 
WDrvFMBootModeUEFI=You are now using UEFI boot mode.
WDrvFMBootModeUnknown=We can't determine which boot mode you're using.
RCTDisplayDrvUninstInstruction=In case of you are having trouble, try to uninstalling these existing drivers, then run the setup again. You may need some tools like Display Driver Uninstaller (DDU).
WDrvDenyUnspecDeviceInstWarning=The operating system has been configured to block device installation under the rules of group policy. This problem may cause failure of the driver installation.%n%nTo solve this problem, please disable device install limitations in group policy editor, reboot the computer, and then try to run setup again.

// 20240526_RainCandyTech_AppSolution_Strings
RCTASEditNotAvailable=Edit Function not available
RCTASPrintNotAvailable=Print Function not available

[Run]

[Code]
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

function RCTIsWin8Client(): Boolean;
var 
  Version: TWindowsVersion;
  RCTech_WinInstType: String;
begin  // 检查是否 Windows 8 Client 版本（主要针对 WPS Office 的系统检测）
  GetWindowsVersionEx(Version);
  RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'InstallationType', RCTech_WinInstType);
  if (Version.NTPlatform) and (Version.Major = 6) and (Version.Minor > 1) and not (RCTech_WinInstType = 'Server') then
  begin
    Log('[RainCandy Technology Inno Setup Experience] Info: Windows 8.x Client is detected.');
    result := true;
  end;
end;

function RCTIs32BitOS(): Boolean;
begin  // 检查安装体验报告的系统架构是否为 32 位
  result:= true;
  if IsWin64 then begin
    result:= false;
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
var
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