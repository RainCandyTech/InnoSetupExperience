// Corel 会声会影 2023 雨糖科技特别版 - 适用于 Windose Installer 的 Inno Setup 脚本
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

#define MyAppName "Corel VideoStudio 2023 RainCandy Technology Special Edition"
#define MyAppNameCS " Corel 会声会影 2023 雨糖科技特别版"
//#define MyAppName "Corel VideoStudio 2023"
//#define MyAppNameCS " Corel 会声会影 2023 官方正式版"
#define MyAppMainName "Corel VideoStudio 2023"
#define MyAppMainNameCS " Corel 会声会影 2023 "
#define MyAppMainNameCT " Corel 會聲會影 2023 "
#define MyAppVersion "26.2.0.311"
#define MyAppMajorVersion "26"
#define MyAppMarketVersion "2023"
#define MyAppPublisher "RainCandy Technology"
//#define MyAppPublisher "Corel Corporation"
#define MyAppURL "http://raincandy.tech/"
//#define MyAppURL "https://www.videostudiopro.com/"
#define WizardImage "WizModernImage-240216"
#define WizardImageConfig SourcePath + "\..\Artworks\" + WizardImage + ".ini"
#define WizardImageAuthor str (ReadIni(WizardImageConfig, "WindoseInstaller", "ArtworkInfo", ""))
#define MyAppExtraInfo WizardImageAuthor
#define MyAppExeName "vstudio.exe"
#define MyAppOutputName "VideoStudio_Install"
#define MyAppTypeVersion "c"
#define MyAppRevisionVer ""
#define MyAppRevisionDate "240529"
#define MyAppSetupBGM "true"
#define RCBGMAllowNotPlay "false"
#define MyAppSetupBGMType "xm"
//#define MyAppSetupStyle "Office2007.cjstyles"
#define MyAppArchitecture "x64"
#define MyAppArchRC "AMD64"
#define MyAppArchRCShort "64"
#define MyAppIsDebugVersion "false"   ;正式外发版本一定要关闭！！！
#define MyAppPublishType "placeholder"
#define MyAppShowFreePrevideMsg "false"
#define MyAppIsNeedStoreApp "false"
//#define RCExtraStoreApp "HEVC Video Extensions"
//#define RCExtraStoreAppCS " HEVC 视频扩展"
#define RCStoreAppNeedNTMajorVer "10"
#define RCStoreAppNeedNTMinorVer "0"
//#define RCInnoExpPluginSignMark ""
#define RCInnoExpProjectDir "D:\CVSKurumiWorkDir"

#include "..\Include\1RainCandyTech_InnoExp.iss"
#include "..\Include\1RCTInnoExp_LangCS.iss"
#include "..\Include\1RCTInnoExp_LangCT.iss"
#include "..\Include\1RCTInnoExp_LangJP.iss"
//#include "..\Include\1RCTInnoExp_LangRU.iss"
//#include "..\Include\1RCTInnoExp_LangCS_IS5.iss"
//#include "..\Include\BASSMOD.iss"
#include "..\Include\ufMOD.iss"
#include "..\Include\Splash.iss"
//#include "..\Include\Background.iss"
//#include "..\Include\ISSkin.iss"
//#include "..\Include\ISTask.iss"
//#include "..\Include\MicrosoftStore_SvcChk.iss"
#include "..\Include\VideoStudio_MainChk.iss"
#include "..\Include\VideoStudio_AddonChk.iss"
//#include "..\Include\VideoStudio_LangChk.iss"
//#include "..\Include\MulticamCapture_Check.iss"
//#include "..\Include\Partner_hy345.iss"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{77B5D818-F96E-4EFD-B0A4-740D0365F78E}
AppVersion={#MyAppVersion}
//AppVersion=v{#MyAppVersion}_{#MyAppArchitecture}_{#MyAppRevisionVer}_{#MyAppRevisionDate}
//AppVersion=v{#MyAppVersion}_{#MyAppArchitecture}_{#MyAppRevisionVer}{#MyAppTypeVersion}_{#MyAppRevisionDate}
AppName={#MyAppName}
//AppName={#MyAppMainName}
//AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright="Made with love by RainCandy Technology"
//AppCopyright="Copyright (C) Corel Corporation. All rights reserved."
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoVersion={#MyAppVersion}
CreateAppDir=no
//LicenseFile="..\Documents\license_alludo.rtf"
//LicenseFile="..\Documents\license_alludo_partner.rtf"
//InfoBeforeFile=
InfoAfterFile="..\Documents\credits_corelvideostudio_umrse_{#MyAppMajorVersion}.rtf"
OutputDir="..\Output"
OutputBaseFilename={#MyAppOutputName}
//OutputBaseFilename=CVSRainCandySE_Setup
//OutputBaseFilename=CVS{#MyAppMajorVersion}_UMRSE_Setup
Compression=lzma2
SolidCompression=yes
DefaultDirName={autopf}\Corel\Corel VideoStudio {#MyAppMarketVersion}
//ArchitecturesAllowed=x64 arm64
ArchitecturesAllowed=win64
//ArchitecturesInstallIn64BitMode=x64
Uninstallable=no
SetupIconFile="..\Icons\cvs{#MyAppMajorVersion}.ico"
DisableWelcomePage=false
WizardImageFile="..\Artworks\{#WizardImage}.bmp"
//WizardSmallImageFile="..\Artworks\WizardSmallImage0.bmp"
WizardSmallImageFile="..\Artworks\rclogo_inno_modern.bmp"
//SetupLogging=yes
//DiskSpanning=true
//DiskSliceSize=2100000000
MinVersion=6.1sp1
//WizardStyle=modern
//WindowVisible=yes
VersionInfoDescription={#MyAppName}
//VersionInfoDescription={#MyAppMainName}
VersionInfoOriginalFileName={#MyAppOutputName}.exe
//VersionInfoOriginalFileName=Setup.exe
RestartIfNeededByRun=no
DefaultGroupName={#MyAppName}
PrivilegesRequired=admin
//UninstallDisplayIcon={app}\MyProg.exe
//signtool=CSignTool

[Languages]
Name: "chinesesimp"; MessagesFile: "..\Languages\ChineseSimplified.isl";
Name: "chinesetrad"; MessagesFile: "..\Languages\ChineseTraditional.isl";
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl";
Name: "english"; MessagesFile: "compiler:Default.isl";
Name: "french"; MessagesFile: "compiler:Languages\French.isl";
Name: "german"; MessagesFile: "compiler:Languages\German.isl";
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl";
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl";
//Name: "korean"; MessagesFile: "..\Languages\Korean.isl";  ;这份语言文件用于 Inno Setup 5 版本安装包
//Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl";
//Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl";
//Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl";
//Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
//Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl";
//Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl";

[Messages]
// 20251116_RainCandyTech_ISEBeveledLabel
BeveledLabel=Made with love by RainCandy Technology
chinesesimp.BeveledLabel=雨糖科技 以爱敬献
chinesetrad.BeveledLabel=雨糖科技 以愛敬獻
japanese.BeveledLabel=Made with love by RainCandy Technology

// 20251130_RainCandyTech_SloganAtISEBegin
ClickNext=Click Next to continue, or Cancel to exit Setup.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
chinesesimp.ClickNext=单击“下一步”继续，或单击“取消”退出安装程序。%n%n雨糖科技 以爱敬献 | 梦想成真 生生不息%n%n{#MyAppExtraInfo}
chinesetrad.ClickNext=按 「下一步」 繼續安裝，或按 「取消」 結束安裝程式。%n%n雨糖科技 以愛敬獻 | 夢想成真 生生不息%n%n{#MyAppExtraInfo}
dutch.ClickNext=Klik op Volgende om verder te gaan of op Annuleren om Setup af te sluiten.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
french.ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
german.ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
italian.ClickNext=Seleziona "Avanti" per continuare, o "Annulla" per uscire.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
japanese.ClickNext=続行するには「次へ」、セットアップを終了するには「キャンセル」をクリックしてください。%n%nRainCandy Technology が愛を込めて作りました | 夢を現実に、生命を永遠に%n%n{#MyAppExtraInfo}
//korean.ClickNext=다음을 클릭하여 계속하거나 취소를 클릭하여 설치를 종료합니다.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//polish.ClickNext=Kliknij przycisk Dalej, aby kontynuować, lub Anuluj, aby zakończyć instalację.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//portuguese.ClickNext=Clique em Seguinte para continuar ou em Cancelar para cancelar a instalação.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//russian.ClickNext=Нажмите «Далее», чтобы продолжить, или «Отмена», чтобы выйти из программы установки.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//spanish.ClickNext=Haga clic en Siguiente para continuar o en Cancelar para salir de la instalación.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//ukrainian.ClickNext=Натисніть «Далі», щоб продовжити, або «Скасувати» для виходу з програми встановлення.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}

// 20240206_RainCandyTech_Finish
// 仅在 MyAppExtraInfo 无信息或表明 Splash 作者时使用
ClickFinish=Click Finish to exit Setup.%n%n{#MyAppExtraInfo}
chinesesimp.ClickFinish=点击“完成”退出安装程序。%n%n{#MyAppExtraInfo}
chinesetrad.ClickFinish=按 「完成」 以結束安裝程式。%n%n{#MyAppExtraInfo}
dutch.ClickFinish=Klik op Voltooien om Setup te beëindigen.%n%n{#MyAppExtraInfo}
french.ClickFinish=Veuillez cliquer sur Terminer pour quitter l'assistant d'installation.%n%n{#MyAppExtraInfo}
german.ClickFinish=Klicken Sie auf "Fertigstellen", um das Setup zu beenden.%n%n{#MyAppExtraInfo}
italian.ClickFinish=Seleziona "Fine" per uscire dall'installazione.%n%n{#MyAppExtraInfo}
japanese.ClickFinish=セットアップを終了するには「完了」をクリックしてください。%n%n{#MyAppExtraInfo}
//korean.ClickFinish=설치를 종료하려면 마침을 클릭하십시오.%n%n{#MyAppExtraInfo}
//polish.ClickFinish=Kliknij przycisk Zakończ, aby zakończyć instalację.%n%n{#MyAppExtraInfo}
//portuguese.ClickFinish=Clique em Concluir para finalizar o Assistente de Instalação.%n%n{#MyAppExtraInfo}
//russian.ClickFinish=Нажмите «Завершить», чтобы выйти из программы установки.%n%n{#MyAppExtraInfo}
//spanish.ClickFinish=Haga clic en Finalizar para salir del programa de instalación.%n%n{#MyAppExtraInfo}
//ukrainian.ClickFinish=Натисніть «Готово» для виходу з програми встановлення.%n%n{#MyAppExtraInfo}

// 20240712_RainCandyTech_FinishReboot
// 仅在 MyAppExtraInfo 无信息或表明 Splash 作者时使用
FinishedRestartLabel=To complete the installation of [name], Setup must restart your computer. Would you like to restart now?%n%n{#MyAppExtraInfo}
chinesesimp.FinishedRestartLabel=为完成{#MyAppNameCS}的安装，安装程序必须重新启动您的电脑。要立即重启吗？%n%n{#MyAppExtraInfo}
chinesetrad.FinishedRestartLabel=要完成 [name] 的安裝，安裝程式必須重新啟動您的電腦。您想要現在重新啟動電腦嗎？%n%n{#MyAppExtraInfo}
dutch.FinishedRestartLabel=Setup moet de computer opnieuw opstarten om de installatie van [name] te voltooien. Wilt u nu opnieuw opstarten?%n%n{#MyAppExtraInfo}
french.FinishedRestartLabel=L'assistant doit redémarrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redémarrer maintenant ?%n%n{#MyAppExtraInfo}
german.FinishedRestartLabel=Um die Installation von [name] abzuschließen, muss das Setup Ihren Computer neu starten. Möchten Sie jetzt neu starten?%n%n{#MyAppExtraInfo}
italian.FinishedRestartLabel=Per completare l'installazione di [name], è necessario riavviare il sistema.%n%nVuoi riavviare adesso?%n%n{#MyAppExtraInfo}
japanese.FinishedRestartLabel=[name] のインストールを完了するためには、コンピューターを再起動する必要があります。すぐに再起動しますか？%n%n{#MyAppExtraInfo}
//korean.FinishedRestartLabel=[name] 설치를 완료하려면 컴퓨터를 다시 시작해야 합니다. 지금 다시 시작하시겠습니까?%n%n{#MyAppExtraInfo}
//polish.FinishedRestartLabel=Aby zakończyć instalację aplikacji [name], instalator musi ponownie uruchomić komputer. Czy chcesz teraz uruchomić komputer ponownie?%n%n{#MyAppExtraInfo}
//portuguese.FinishedRestartLabel=Para completar a instalação do [name], o Assistente de Instalação deverá reiniciar o seu computador. Deseja reiniciar agora?%n%n{#MyAppExtraInfo}
//russian.FinishedRestartLabel=Для завершения установки [name] требуется перезагрузить компьютер. Произвести перезагрузку сейчас?%n%n{#MyAppExtraInfo}
//spanish.FinishedRestartLabel=Para completar la instalación de [name], su sistema debe reiniciarse. ¿Desea reiniciarlo ahora?%n%n{#MyAppExtraInfo}
//ukrainian.FinishedRestartLabel=Для завершення встановлення [name] необхідно перезавантажити ваш комп’ютер. Перезавантажити комп’ютер зараз?%n%n{#MyAppExtraInfo}

InstallingLabel=Of all my friends on this journey with me, how many of them are still waking up?
chinesesimp.InstallingLabel=总想起身边走在路上的朋友，有多少正在醒来？
chinesetrad.InstallingLabel=總想起身邊走在路上的朋友，有多少正在醒來？

[CustomMessages]
MOVCompatibility=MOV format compatibility hotfix
chinesesimp.MOVCompatibility=MOV 格式兼容性补丁
chinesetrad.MOVCompatibility=MOV 格式相容性補丁

[Code]
function InitializeSetup: Boolean;
var  // 安装程序加载
  BGMusicFile: string;
  BGMusicType: string;
begin
  AiMofSetupInit;
  Log('[Windose Installer] Error: Of all my friends on this journey with me, how many of them are still waking up?');
  //ExtractTemporaryFile('{#MyAppSetupStyle}');
  Result := True;

  if (VS{#MyAppMajorVersion}{#MyAppArchRC}Main) and (RegValueExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer', 'Path')) then 
  //if ((VS{#MyAppMajorVersion}IA32Main) or (VS{#MyAppMajorVersion}AMD64Main)) and (RegValueExists(HKLM, 'SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer', 'Path')) then 
  begin  // 检测准备安装的会声会影版本是否已经在电脑上提前安装，如检查到则弹窗退出
    Log('[Windose Installer] Error: {#MyAppMainName} is already installed...');
    if (languageName = 'chinesesimp') then begin
    	MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainNameCS}']) + #13 + CustomMessage('RCTMsgMustUninstExistVer')  + #13#13 + CustomMessage('RCTMsgSetupExit'),mbError, MB_OK);
    end;
    if (languageName = 'chinesetrad') then begin
    	MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainNameCT}']) + #13 + CustomMessage('RCTMsgMustUninstExistVer')  + #13#13 + CustomMessage('RCTMsgSetupExit'),mbError, MB_OK);
    end;
    if (languageName <> 'chinesesimp') and (languageName <> 'chinesetrad') then begin
    	MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainName}']) + #13 + CustomMessage('RCTMsgMustUninstExistVer')  + #13#13 + CustomMessage('RCTMsgSetupExit'),mbError, MB_OK);
    end;
    Result := False;
    Exit;
  end;
  
  if Version.NTPlatform and (Version.Major = 6) and ((Version.Build >= 7601) and not ((Version.Build = 9200) or (Version.Build = 9600))) then
  begin  // 检查是否 Windows 7 SP1、Windows 8.x 预览版或 Windows 10 早期预览版系统，如是则弹窗询问                                                                                                                                                                                                                                         
    Log('[Windose Installer] Error: The operating system is not supported... (Windows 7 SP1 / Windows 8.x Preview / Windows 10 Technical Preview)');
    if (SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgOSNotMeetRequirement'), ['Windows 7 SP1 / Windows 8.x Preview / Windows 10 Technical Preview']) + #13 + FmtMessage(CustomMessage('RCTMsgOSMinRequirement'), ['Windows 8 RTM / Windows 8.1 RTM']) + #13#13 + CustomMessage('RCTMsgAppMayNotFuncOnThisOS') + #13 + CustomMessage('RCTMsgAskContinue'),mbError, MB_YESNO, MB_YESNO) = IDNO) then
    begin
      Result := False;
      Exit;
    end;
  end;
  
  if (IsArm64) then
  begin  // 检查是否系统架构是否为 ARM64，如是则弹窗询问                                                                                                                                                                                                                                         
    Log('[Windose Installer] Warning: The operating system is not supported... (ARM64 architecture)');
    if (SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgOSNotMeetRequirement'), [CustomMessage('RCTISEOSArchARM64')]) + #13 + CustomMessage('RCTMsgRequireAMD64') + #13#13 + CustomMessage('RCTMsgAppMayNotFuncOnThisOS') + #13 + CustomMessage('RCTMsgAskContinue'),mbError, MB_YESNO, MB_YESNO) = IDNO) then
    begin
      Result := False;
      Exit;
    end;
  end;
  
  if (SupportDotNet48 = false) then
  begin  // 当检测到当前系统版本不支持.NET Framework 4.8 时，弹窗提示
    Log('[Windose Installer] Warning: The operating system is not supported... (No support for .NET Framework 4.8)');
    MsgBox(CustomMessage('RCTMsgOSNotSupportNET48') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK);
  end;

  //if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\VideoStudio\3DTitleEditor,InstallDir}\3DTitles.exe')) then
  if (T3DAMD64Main = true) then
  begin  // 检测系统是否存在会声会影 3D 标题编辑器，如存在则弹窗提示
    Log('[Windose Installer] Warning: VideoStudio 3D Titie Editor is already installed...');
    if (languageName = 'chinesesimp') then begin
      SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['会声会影 3D 标题编辑器']) + #13'电脑中可能存在其他版本的会声会影。在安装本程序附带的 3D 标题编辑器版本时，您可能会遇到问题。'#13#13 + CustomMessage('RCTMsgSetupContinue'),mbError, MB_OK, MB_OK);
    end;
    if (languageName = 'chinesetrad') then begin
      SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['會聲會影 3D 標題編輯器']) + #13'您可能安裝了其他版本的會聲會影。安裝此應用程式附帶的 3D 標題編輯器版本時，您可能會遇到問題。'#13#13 + CustomMessage('RCTMsgSetupContinue'),mbError, MB_OK, MB_OK);
    end;
    if (languageName <> 'chinesesimp') and (languageName <> 'chinesetrad') then begin
      SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['VideoStudio 3D Title Editor']) + #13'You may have other versions of VideoStudio installed. You may experience problems while installing this version of 3D Title Editor that comes with this application.'#13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
    end;
  end;

  //if Version.NTPlatform and (Version.Major >= {#RCStoreAppNeedNTMajorVer}) and (Version.Minor >= {#RCStoreAppNeedNTMinorVer}) and (NeedStoreApp = true) and ((SvcDisableChk_AppxSvc) or (SvcDisableChk_ClipSVC) or (SvcDisableChk_LicenseManager) or (SvcDisableChk_InstallService) or (SvcDisableChk_mpssvc)) then
  //begin  // 检测系统中 Microsoft Store 部署服务是否存在禁用现象，如存在则弹窗提示
    //Log('[Windose Installer] Warning: One or more necessarily Windows services has been disabled...');
    //if (languageName = 'chinesesimp') then begin
      //SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgWinStoreSvcChkFailed'), ['{#RCExtraStoreAppCS}']) + #13#13{#RCStoreInstSvc}#13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
    //end else
    //begin
      //SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgWinStoreSvcChkFailed'), ['{#RCExtraStoreApp}']) + #13#13{#RCStoreInstSvc}#13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
    //end;
  //end;

  Log('[Windose Installer] Info: Pre-install check passed...'); 
  AiMofPostChkInIt;

  // 自定义主题加载
  //LoadSkin(ExpandConstant('{tmp}\{#MyAppSetupStyle}'), 'NormalBlack.ini');

  // 解压 BGM 文件
  BGMusicType := ExpandConstant('{#MyAppSetupBGMType}');
  BGMusicFile := ExpandConstant('{tmp}\music.' + BGMusicType);
  ExtractTemporaryFile('music.' + BGMusicType);

  // BGM 准备（BASSMOD）
  //ExtractTemporaryFile('BASSMOD.dll');
  //if not BASSMOD_Init(-1,44100,0) then begin
    //BASSMOD_Free;
    //BASSMOD_MusicFree;
  //end;
  //if BASSMOD_MusicLoad(false, PAnsiChar(BGMusicFile), 0, 0, 4) and (not RCTech_DoNotPlayBGM = true) then begin
    //Log('[Windose Installer] Info: Plugin BASSMOD prepare complete, start music playing...');
    //BASSMOD_MusicPlay;
  //end;

  // BGM 准备（ufMOD）
  if not (RCTech_DoNotPlayBGM = true) then begin
    Log('[Windose Installer] Info: Plugin ufMOD prepare complete, start music playing...');
    PlaySongFile(ExpandConstant('{tmp}\music.xm'));
  end;

  AiMofSplashInit;

  Log('[Windose Installer] Info: Prepare Complete...');
end;

procedure InitializeWizard();
begin  // 安装向导加载
  Log('[Windose Installer] Info: Initializing Wizard...');
  //AiMofBGPicInit;
  //WizardForm.LICENSEACCEPTEDRADIO.Checked := true;
end;

procedure DeinitializeSetup();
begin   // 安装程序退出
  Log('[Windose Installer] Info: Deinitializing Setup...');
  //BASSMOD_Free;
  //ShowWindow(StrToInt(ExpandConstant('{wizardhwnd}')), 0);
  //UnloadSkin();
  //Log('[Windose Installer] Info: Start to cleaning temp files...');
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin  // 跳过不必要页面
  result := false;
  Log('[Windose Installer] Error: Of all my friends on this journey with me, how many of them are still waking up?');
  if (PageID = wpLicense) then result := true;
  //if (PageID = wpReady) then result := true;
  //if (PageID = wpInfoBefore) then result := true;
  //if (PageID = wpInfoAfter) then result := true;
  //if (PageID = wpFinished) then result := true;
  //if (PageID = wpSelectDir) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) or (PageID = wpFinished) then result := true;
end;

[Files]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

; Splash 文件
Source: "{#RCInnoExpProjectDir}\CVSRainCandySE_{#MyAppMarketVersion}\Splash\*"; DestDir: {tmp}; Flags: dontcopy nocompression;

; 视觉效果文件
//Source: "..\Plugins\ISSkin\{#MyAppSetupStyle}"; DestDir: {tmp}; Flags: dontcopy nocompression

; BGM 文件
//Source: "..\Plugins\1BGM\music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression 
//Source: "..\Plugins\1BGM\music_videostudio.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\1BGM\music_videostudio_{#MyAppMajorVersion}.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\1BGM\music_videostudio_17-22-27.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Registry]
; 本段处理程序在注册表中的键值

[Run]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”
; 主程序安装
Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART PRODUCTSKU=""{#MyAppArchRCShort}-bit Lite"" RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\normal;
Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART PRODUCTSKU=""{#MyAppArchRCShort}-bit Lite"" IOFF=1 RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\ioff;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART INSTALL_TYPE=""ULT_T"" RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\normal;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART INSTALL_TYPE=""ULT_T"" IOFF=1 RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\ioff;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART INSTALL_TYPE=""ULT_T"" PRODUCTSKU=""{#MyAppArchRCShort}-bit Lite"" RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\normal; 
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART INSTALL_TYPE=""ULT_T"" PRODUCTSKU=""{#MyAppArchRCShort}-bit Lite"" IOFF=1 RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\ioff;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART PRODUCTSKU=""{#MyAppArchRCShort}bit SE"" RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\normal;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART PRODUCTSKU=""{#MyAppArchRCShort}bit SE"" IOFF=1 RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\ioff;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART INSTALL_TYPE=""PRO_VLP"" RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\normal;
//Filename: "{src}\VideoStudio\Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/l*v {tmp}\RCLOG_CVS{#MyAppMajorVersion}_SetupEngine.log /NORESTART INSTALL_TYPE=""PRO_VLP"" IOFF=1 RAINCANDY_SHOWEULA=0 RAINCANDY_SHOWUEIP=0"; Components: main\ioff;

; 可选补丁安装
//Filename: "{src}\Common\VS{#MyAppMajorVersion}RCPostInst\RainCandy_Hotfix_VideoStuttering.exe"; StatusMsg: "{cm:RCTISERunInstHotfix}"; Parameters: "/VERYSILENT /NORESTART"; Components: patch\videostuttering; check: VS{#MyAppMajorVersion}{#MyAppArchRC}Main; BeforeInstall: SetMarqueeProgress(True);
Filename: "{src}\Hotfixes\Hotfix_MovCompatibility.exe"; StatusMsg: "{cm:RCTISERunInstHotfix}"; Parameters: "/VERYSILENT /NORESTART"; Components: patch\movcompatibility; check: VS{#MyAppMajorVersion}{#MyAppArchRC}Main; BeforeInstall: SetMarqueeProgress(True);

; 完成安装时启动程序
Filename: "{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Ulead Systems\Corel VideoStudio Pro\{#MyAppMajorVersion}.0\Installer,Path}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{cm:RCTISEMyAppName}}"; Flags: postinstall nowait skipifsilent; Check: VS{#MyAppMajorVersion}{#MyAppArchRC}Main;

[Types]
// 安装类型
Name: "default"; Description: "{cm:RCTISEDefaultInstType}"; Flags: iscustom;

[Components]
// 安装程序参数
Name: "main"; Description: "{cm:RCTISEMainApp}"; Types: default; Flags: fixed;
Name: "main\normal"; Description: "{cm:RCTISEInstNormal}"; Flags: exclusive;  
Name: "main\ioff"; Description: "{cm:RCTISEInstWithoutNet} - {cm:RCTISEExpFeature}"; Flags: exclusive;
Name: "patch"; Description: "{cm:RCTISEHotfix}"; 
//Name: "patch\videostuttering"; Description: "Fix video stuttering issue in SP1 update - 修复 SP1 更新视频掉帧问题";
Name: "patch\movcompatibility"; Description: "{cm:MOVCompatibility}";

[Tasks]
// 安装程序可选任务

[Icons]
// 快捷方式创建相关
