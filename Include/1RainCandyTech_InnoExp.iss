// 雨糖科技 Windose Installer 安装体验脚本 - 主要函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码为雨糖科技安装体验脚本的主要函数。

#define RCInnoExpVer "20260606"

[Messages]
// Setup Note in "About" dialog
AboutSetupNote=Built with Windose Installer version {#RCInnoExpVer}.%nhttps://github.com/RainCandyTech/InnoSetupExperience

[CustomMessages]
// General strings for Windose Installer
RCTISEMyAppName={#MyAppName}
RCTISEMainApp=Main application
RCTISEMainFeatures=Main features
RCTISEInstNormal=Normal installation
RCTISEInstWithoutNet=Disable network features
RCTISEInstOnlineVer=Install online version
RCTISEInstOfflineVer=Install offline version
RCTISEDefaultInstType=Default installation
//RCTISEFullInstType=Full installation
//RCTISECustomInstType=Custom installation
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
RCTASEditNotAvailable=Edit Function not available
RCTISEFeatureExpWarn=May be unstable, use with caution!
RCTISEInstVerChoose=Install version %1

// Messages for Windose Installer
RCTMsgSetupContinue=Setup will now contiune.
RCTMsgSetupExit=Setup will now exit.
RCTMsgAskContinue=Do you want to continue?
RCTMsgDebugNotice=This version of the application is for testing purposes only.
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
RCTMsgAppTryContinueInst=The current version of the operating system is not officially supported, so installation support on the current operating system is an experimental feature.
RCTMsgMustUninstExistVer=Please uninstall the existing version of the application before installing.
RCTMsgPatchAppNotExistNotice=We cannot find %1 application on your computer.
RCTMsgPatchAppNotExistChk=Make sure you have installed the application properly, and then try again.
RCTMsgWinStoreSvcChkFailed=One or more of the necessary services used to deploy Microsoft Store apps have been disabled and may affect the installation of %1. We strongly recommend you to enable these following services before proceeding with the installation.
RCTMsgChkFinishNextNotice=Once the check is complete, click Next to continue.
RCTMsgFollowSteps= Please follow these steps:
RCTMsgStepNumber=Step %1:
//RCTMsgRequireAMD64=This application requires an x86_64 / AMD64 architecture operating system.
RCTMsgFreeProvideNotice=Important: This application is provided "as is" FOR FREE.%nIf you paid for this application and need assistance, please contact the seller directly. 
RCTMsgWebGetUpdateNotice=You can get the latest version or its future updates of the application at RainCandy Technology Website (http://raincandy.tech/).
RCTMsgNewInstDelConfNotice=Do you want to perform a clean installation? This will delete the existing user configurations.
RCTMsgDelUserConfFailed=Failed to delete user configurations.
RCTMsgAppStillRunning=Setup has detected that %1 is still running.
RCTMsgAppNoticeUserExit=Please quit the application, then run the setup again.
RCTMsgPatchAppVerNotSupport=The version of %1 application installed on your computer does not meet the requirements.
RCTMsgPatchAppCurrentVer=The version of application that you currently have installed is:
RCTMsgAppOtherArchIsInst=It appears that you already have another architecture version of the %1 application installed on your computer.
RCTMsgNotSupportSilent=This application does not support silent installation. Please run setup directly.
RCTMsgPleaseContactUs=Please contact us for any problems. Thank you!

// Strings for drivers for Windows platform
WinDrvSignModeSelect=Signature mode select
WinDrvSignModeOption=Signature mode %1
//WDrvDeviceManager=Device Manager
//WDrvDevMgrOpen=Open Device Manager
WinDrvHDAudio=HD Audio Driver
//WinDrvUSBC=USB-C Driver
//WDrvPreInstChk=Pre-installation device issue check
//WDrvPostInstChk=Post-installation device issue check
//WDrvInstChkDesc=Follow these steps below to check the devices on your computer.
//WDrvPreInstChkAskUser=Did you find any of the errors described above in the Device Manager?
//WDrvPreInstChkSameErrFound=I'm seeing the same error issue.
//WDrvInstChkCodeFoundDesc=Find out what to do next.%nYou should only click this button if you find a specific error for "Code %1".
//WDrvPreInstChkSameErrNotFound=I didn't find any issue, or the issue was not the same as the one mentioned earlier in the setup.
//WDrvPreInstChkSameErrNotFoundDesc=Setup will continue.%nIf you have other error issues, click this button as well. Once the driver installation is complete, these issues may be resolved.
//WDrvPreInstChkNowNotice=Now you need to open the Device Manager and check if there are any devices with exclamation%nmark icon in the "Display adapters" category. If there are, double-click the icon and see if there is%nan error message containing "Code %1". This issue should not occur under normal circumstances.
WDrvErrorCannotContinue=Error: %nA critical problem affecting the normal operation of the device has been encountered. Please resolve it by following the guide, then run the setup again.
WDrvFMConfHasError=There's a problem with your computer's current UEFI BIOS configuration.
WDrvGPUStateError=The graphics driver is detected to be not functioning properly. Please check the GPU for issues.%n%nRefer to the release notes of this project, as they may provide troubleshooting guidance.
WDrvFMBootModeHowTo=Convert the partition table of the disk containing the OS to GPT/GUID format. You can use tools such as Windows RE / installation media, MBR2GPT utility and so on. Then, make sure to perform OS boot repair to complete the conversion to UEFI boot mode.
//WDrvFMBootModeUEFIIgnore=(Skip this step if you are already using UEFI boot mode.)
WDrvFMBootModeDisableCSM=Enter the UEFI BIOS Utility, find and disable "Compatibility Support Module" (CSM) option.
WDrvFMBootModeLegacyDisableWarning=Important: The OS WILL NOT BOOT if you disabled this option without the first step.
WDrvFMBootModeHowToASUSExtra=For certain specific ASUS motherboard models (H81, B85, etc.), it's also necessary to edit settings like "Primary Display" & "iGPU Multi-Monitor" in the UEFI BIOS Utility.
WDrvFMBootModeLegacy=You are now using legacy BIOS boot mode. 
WDrvFMBootModeUEFI=You are now using UEFI boot mode.
WDrvFMBootModeUnknown=We can't determine which boot mode you're using.
RCTDisplayDrvUninstInstruction=In case of you are having trouble, try to uninstalling these existing drivers, then run the setup again. You may need some tools like "Display Driver Uninstaller" (DDU).
WDrvDenyUnspecDeviceInstWarning=The device installation service of the operating system has been disabled, or a Group Policy rule has been set to prohibit device installation under specific circumstances. This issue may cause driver installation to fail.%n%nTo resolve this issue, please enable the relevant service and remove the device installation restrictions in the Group Policy Editor, then restart your computer.
//WDrvChkCode12NextNotice=Once the check is complete, click Next to continue. Then, setup will ask you about your current situation.
WDrvFMConfErrIGFXNotWorking=This issue will cause integrated graphics and GPU devices without display output support (like NVIDIA P106-100 and CMP 40HX) not working properly.
WDrvPublisherType=Install %1 driver
WDrvPolicyDenyXSignNotice=Windows Driver policy is active in enforcement mode, so setup cannot continue. Please delete Windows Driver policy from your operating system.%n%nYou can find more information in the release notes of this project.

[Run]

[Code]
var // 全局变量
  languageName: String;
  Version: TWindowsVersion;
  ProcessName: String;
  WinInstType: String;
  WinProductType: String;
  DebugVersion: Boolean;
  BGMusicFile: string;
  BGMusicType: string;
  DoNotPlayBGM: Boolean;
  IsSetupIncludingBGM: Boolean;
  IsSetupBGMAllowNotPlay: Boolean;
  AppTargetArch: String;
  CurrentDPI, StandardDPI, MediumDPI, LargeDPI: Integer;

// 安装程序加载，并对变量进行初始化
procedure NijikaSetupInit;
begin
  Log('[Windose Installer] Info: Initializing Windose Installer.');
  DebugVersion := {#MyAppIsDebugVersion};
  languageName := ActiveLanguage();
  ProcessName  :=  ExtractFileName(ParamStr(0));
  Log('[Windose Installer] Info: The process name of setup is: "' + ProcessName + '".');
  IsSetupIncludingBGM := {#MyAppSetupBGM};
  IsSetupBGMAllowNotPlay := {#RCBGMAllowNotPlay}
  AppTargetArch := '{#MyAppArchRC}';
  GetWindowsVersionEx(Version);
  RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'InstallationType', WinInstType);
  Log('[Windose Installer] Info: The installation type of current operating system is "' + WinInstType + '".');
  RegQueryStringValue(HKLM, 'SYSTEM\CurrentControlSet\Control\ProductOptions', 'ProductType', WinProductType);
  Log('[Windose Installer] Info: The product type of current operating system is "' + WinProductType + '".');
  Log('[Windose Installer] Info: Variables initialization complete.');
end;

// 在用户等待安装程序执行操作的时候，可以通过这个滚动进度条让用户感知到安装程序没有卡死
procedure SetMarqueeProgress(Marquee: Boolean);
begin
  if Marquee then
  begin
    WizardForm.ProgressGauge.Style := npbstMarquee;
  end
    else
  begin
    WizardForm.ProgressGauge.Style := npbstNormal;
  end;
end;

// 检查系统是否为 Windows 客户端版本
function RCTIsWinClient(): Boolean;
begin
  result := true;
  if (WinInstType = 'Server') or (WinProductType = 'ServerNT') then begin
    result := false;
  end;
end;

// 检查 Inno Setup 报告的系统架构是否为 32 位操作系统
//function RCTIs32BitOS(): Boolean;
//begin  
  //result := false;
  //if not IsWin64 then begin
    //result := true;
  //end;
//end;

// 检查 Inno Setup 报告的系统架构是否为 64 位操作系统
//function RCTIs64BitOS(): Boolean;
//begin
  //result := false;
  //if IsWin64 then begin
    //result := true;
  //end;
//end;

// 检查 Inno Setup 报告的系统架构是否为 ARM64 架构
function RCTIsArchARM64(): Boolean;
begin
  result := false;
  if IsArm64 then begin
    result := true;
  end;
end;

// 检查安装程序是否以静默方式运行
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

// 调用系统函数实现进程结束功能，因为在别的地方直接 "Exit;" 压根不好使！
procedure ExitProcess(exitCode:integer);
external 'ExitProcess@kernel32.dll stdcall';

// 安装程序加载期间 BGM 相关检测与询问
procedure BGMPlayDetection;
begin
  if (IsSetupIncludingBGM = true) then begin
    // 如果静默安装或找到禁止播放 BGM 占位符，则禁止 BGM 播放
    if (RCTIsSilent = true) or (FileExists(ExpandConstant('{src}\NoBGM_RCTechSetup'))) then begin
      Log('[Windose Installer] Info: Config "NoBGM_RCTechSetup" detected, disable music playing!');
      DoNotPlayBGM := True;
    end else begin
      if (IsSetupBGMAllowNotPlay = true) then begin
        // 如果允许不播放 BGM，则弹窗询问用户是否播放
        if (SuppressibleMsgBox(CustomMessage('RCTMsgAskUserPlayBGM'), mbInformation, MB_YESNO, MB_YESNO) = IDNO) then begin
          Log('[Windose Installer] Info: User choosed not to play music.');
          DoNotPlayBGM := True;
        end;
      end else begin
        // 如果不允许不播放 BGM，则弹窗提示进行提醒
        SuppressibleMsgBox(CustomMessage('RCTMsgWarnUserBGMWillPlay') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
      end;
    end;
  end;
end;

// 检查操作系统版本是否支持 .NET Framework 4.8
function SupportDotNet48(): Boolean;
begin
  result:= false;
  if Version.NTPlatform and (
    ((Version.Major = 6) and (Version.Build = 7601) or (Version.Build = 9200) or (Version.Build = 9600)) or
    ((Version.Major >= 10) and (Version.Build >= 14393))
  ) then
  begin
    Result := True;
  end;
end;

// 读取当前操作系统的 DPI，注意不能在 InitializeSetup 阶段使用
procedure DPIDetection;
begin
  { Store defaults determined from Windows DPI settings }
  StandardDPI := 96;  { 100% }
  MediumDPI   := 120; { 125% }
  LargeDPI    := 144; { 150% }
  
  { Get the current DPI }
  CurrentDPI  := WizardForm.Font.PixelsPerInch;
end;

// 程序检查完成后，继续安装体验初始化
procedure NijikaPostChkInIt;
var
  IsShowFreeProvideMsg: Boolean;
begin
  // 按原样免费提供的相关提示
  IsShowFreeProvideMsg := {#MyAppShowFreePrevideMsg};
  if (IsShowFreeProvideMsg = true) then begin
    SuppressibleMsgBox(CustomMessage('RCTMsgFreeProvideNotice')+ #13#13 + CustomMessage('RCTMsgWebGetUpdateNotice') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
  end;
  // 测试版弹窗
  if (DebugVersion = true) then begin
    Log('[Windose Installer] Info: This application is a debug version.');
    SuppressibleMsgBox(CustomMessage('RCTMsgDebugNotice') + CustomMessage('RCTMsgPleaseContactUs') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);
  end;
  BGMPlayDetection;
end;
