; WPS Office 雨糖科技特别版 - 雨糖科技安装体验 Inno Setup 脚本
; Made with love by RainCandy Technology
; 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

//#define MyAppName "WPS Office RainCandy Technology Special"
#define MyAppName "WPS Office 雨糖科技特别版"
#define MyAppNameCS " WPS Office 雨糖科技特别版"
#define MyAppMainName "WPS Office"
#define MyAppMainNameCS " WPS Office "
#define MyAppMainNameCT " WPS Office "
#define MyAppVersion "12.1.0.16929"
#define MyAppMajorVersion "12"
#define MyAppMarketVersion "2023"
//#define MyAppPublisher "RainCandy Technology"
#define MyAppPublisher "Kingsoft Office Software"
//#define MyAppURL "http://raincandy.1337.moe/"
#define MyAppURL "https://www.wps.cn/"   ;卡饭论坛不允许作品出现推广链接，故替换为官网链接
#define MyAppExtraInfo ""
//#define MyAppExtraInfo "Artwork: pixiv @Kyokaz"   ;c0
//#define MyAppExtraInfo "Artwork: しろううらやま (@urayamashiro)"   ;c3
//#define MyAppExtraInfo "Artwork: モズ (@sushiuma_m_)"   ;c4
//#define MyAppExtraInfo "Source of artwork: にゃるら (@nyalra)"   ;c5
//#define MyAppExtraInfo "Artwork: pixiv @MIWV"   ;c6
//#define MyAppExtraInfo "Artwork: @shiro96haru"   ;c7
//#define MyAppExtraInfo "Artwork: らぐほのえりか (@ragho_net)"   ;c8
//#define MyAppExtraInfo "Artwork: 上倉エク (@ekureea)"   ;c9
//#define MyAppExtraInfo "Artwork: ぜつよちまよ (@zetsuyochimayo)"   ;b0, b3, b8
//#define MyAppExtraInfo "Artwork: ちょうはつ (@L_hair_)"   ;b2
//#define MyAppExtraInfo "Artwork: まよ (@oekaki_bibbi)"   ;b4
//#define MyAppExtraInfo "Artwork: ちか (@06chimika13)"   ;b5, b6, b8
//#define MyAppExtraInfo "Artwork: いくしー (@Ixy)"   ;b7
//#define MyAppExtraInfo "Artwork: pixiv @messyCode&"   ;b240401
//#define MyAppExtraInfo "Artwork: KRSK (@SK_tsu96)"   ;b240515
//#define MyAppExtraInfo "Artwork: pixiv @画师JW"   ;c240216
#define MyAppExeName "WPSOffice.exe"
#define MyAppOutputName "WPSOffice_RainCandySE"
#define MyAppTypeVersion "365"
#define MyAppRevisionVer "rNext"
#define MyAppRevisionDate "180529"
#define MyAppSetupBGMType "xm"
//#define MyAppSetupStyle "Office2007.cjstyles"
#define MyAppArchitecture "x86"
#define MyAppArchRC "IA32"
#define MyAppArchRCShort "32"
#define MyAppIsDebugVersion "true"
//#define MyAppPublishType "Internal_10"
//#define MyAppPublishType "Internal_11"
//#define MyAppPublishType "Internal_12"
#define MyAppPublishType "Internal_Personal"
//#define MyAppPublishType "Production_10"
//#define MyAppPublishType "Production_11"
//#define MyAppPublishType "Production_12"
#define MyAppIsNeedStoreApp "false"
#define RCExtraStoreApp ""
#define RCExtraStoreAppCS ""
#define RCStoreAppNeedNTMajorVer "6"
#define RCStoreAppNeedNTMinorVer "2"
#define RCInnoExpVer "v6.3.3.8_241029"
#define RCAppConfType "_Personal"
//#define RCInnoExpPluginSignMark "_signed"
#define RCInnoExpProjectDir "E:\Development\WPS Office"

#include "..\Include\1RainCandyTech_InnoExp.iss"
#include "..\Include\1RCTInnoExp_LangCS.iss"
//#include "..\Include\1RCTInnoExp_LangCT.iss"
//#include "..\Include\1RCTInnoExp_LangJP.iss"
//#include "..\Include\BASSMOD.iss"
#include "..\Include\ufMOD.iss"
#include "..\Include\Splash.iss"
//#include "..\Include\ISSkin.iss"
#include "..\Include\ISTask.iss"
//#include "..\Include\MicrosoftStore_SvcChk.iss"
#include "..\Include\WPSOffice_Check.iss"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{53496801-681C-4F6A-96EB-E4196EA1A7A1}
AppVersion=v{#MyAppVersion}_{#MyAppArchitecture}_{#MyAppRevisionVer}_{#MyAppRevisionDate}
AppName={#MyAppName}
//AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
//AppCopyright="Made with love by RainCandy Technology"
AppCopyright="Copyright(c)1988-2024 Kingsoft Corporation. All rights reserved."
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoVersion={#MyAppVersion}
//CreateAppDir=no
LicenseFile="..\Documents\license_wps.rtf"
//InfoBeforeFile=
InfoAfterFile="..\Documents\credits_wps_umrse.rtf"
OutputDir="..\Output"
//OutputBaseFilename={#MyAppOutputName}_{#MyAppMarketVersion}_{#MyAppVersion}_{#MyAppRevisionVer}_{#MyAppRevisionDate}
OutputBaseFilename={#MyAppOutputName}_{#MyAppMarketVersion}_{#MyAppVersion}_{#MyAppArchitecture}_{#MyAppRevisionVer}_{#MyAppRevisionDate}
//OutputBaseFilename=wpssetup
Compression=lzma2/ultra64
SolidCompression=yes
DefaultDirName={autopf}\Kingsoft\WPS Office
//ArchitecturesAllowed=win64
//ArchitecturesInstallIn64BitMode=x64
Uninstallable=no
//SetupIconFile="..\Icons\WPSOffice_Business.ico"
SetupIconFile="..\Icons\WPSOffice_WPS365.ico"
//SetupIconFile="..\Icons\WPSOffice_Home.ico"
//SetupIconFile="..\Icons\WPSPDF.ico"
DisableWelcomePage=false
WizardImageFile="..\Artworks\WizModernImage-c2.bmp"
//WizardImageFile="..\Artworks\wpsoffice.bmp"
//WizardSmallImageFile="..\Artworks\WizardSmallImage0.bmp"
WizardSmallImageFile="..\Artworks\rclogo_inno_modern.bmp"
//SetupLogging=yes
MinVersion=6.1
WizardStyle=modern
WindowVisible=yes
//VersionInfoDescription={#MyAppName}
//VersionInfoDescription=WPS Install Application
VersionInfoDescription=WPS 365 Install Application
VersionInfoOriginalFileName={#MyAppOutputName}.exe
//VersionInfoOriginalFileName=Windose.exe
//AlwaysRestart=yes
RestartIfNeededByRun=no
DefaultGroupName={#MyAppName}
PrivilegesRequired=admin
//UninstallDisplayIcon={app}\MyProg.exe
;signtool=CSignTool

[Languages]
Name: "chinesesimp"; MessagesFile: "..\Languages\ChineseSimplified.isl"; LicenseFile: "..\Documents\license_wps_cn.rtf";
//Name: "chinesetrad"; MessagesFile: "..\Languages\ChineseTraditional.isl";
//Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl";
//Name: "english"; MessagesFile: "compiler:Default.isl";
//Name: "french"; MessagesFile: "compiler:Languages\French.isl";
//Name: "german"; MessagesFile: "compiler:Languages\German.isl";
//Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl";
//Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl";
//Name: "korean"; MessagesFile: "..\Languages\Korean.isl";  ;这份语言文件用于 Inno Setup 5 版本安装包
//Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl";
//Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl";
//Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl";
//Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
//Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl";
//Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl";

[Messages]
// 20240913_RainCandyTech_ISEBeveledLabel
//BeveledLabel=For the youth that blooms
//chinesesimp.BeveledLabel=大鸣大放 年轻绚烂
//chinesetrad.BeveledLabel=大鳴大放 年輕絢爛
//japanese.BeveledLabel=若さを開花させる

// 20240913_RainCandyTech_SloganAtISEBegin_ModernWizard
ClickNext=Click Next to continue, or Cancel to exit Setup.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
chinesesimp.ClickNext=单击“下一步”继续，或单击“取消”退出安装程序。%n%n雨糖科技 荣誉制作 | 大鸣大放 年轻绚烂%n%n{#MyAppExtraInfo}
//chinesetrad.ClickNext=按 「下一步」 繼續安裝，或按 「取消」 結束安裝程式。%n%n雨糖科技 榮譽製作 | 大鳴大放 年輕絢爛%n%n{#MyAppExtraInfo}
//dutch.ClickNext=Klik op Volgende om verder te gaan of op Annuleren om Setup af te sluiten.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//french.ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//german.ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//italian.ClickNext=Seleziona "Avanti" per continuare, o "Annulla" per uscire.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//japanese.ClickNext=続行するには「次へ」、セットアップを終了するには「キャンセル」をクリックしてください。%n%nRainCandy Technology が愛を込めて作りました | 若さを開花させる%n%n{#MyAppExtraInfo}
//korean.ClickNext=다음을 클릭하여 계속하거나 취소를 클릭하여 설치를 종료합니다.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//polish.ClickNext=Kliknij przycisk Dalej, aby kontynuować, lub Anuluj, aby zakończyć instalację.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//portuguese.ClickNext=Clique em Seguinte para continuar ou em Cancelar para cancelar a instalação.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//russian.ClickNext=Нажмите «Далее», чтобы продолжить, или «Отмена», чтобы выйти из программы установки.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//spanish.ClickNext=Haga clic en Siguiente para continuar o en Cancelar para salir de la instalación.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}
//ukrainian.ClickNext=Натисніть «Далі», щоб продовжити, або «Скасувати» для виходу з програми встановлення.%n%nMade with love by RainCandy Technology | For the youth that blooms%n%n{#MyAppExtraInfo}

// 20240206_RainCandyTech_Finish
// 仅在 MyAppExtraInfo 无信息或表明 Splash 作者时使用
ClickFinish=Click Finish to exit Setup.%n%n{#MyAppExtraInfo}
chinesesimp.ClickFinish=点击“完成”退出安装程序。%n%n{#MyAppExtraInfo}
//chinesetrad.ClickFinish=按 「完成」 以結束安裝程式。%n%n{#MyAppExtraInfo}
//dutch.ClickFinish=Klik op Voltooien om Setup te beëindigen.%n%n{#MyAppExtraInfo}
//french.ClickFinish=Veuillez cliquer sur Terminer pour quitter l'assistant d'installation.%n%n{#MyAppExtraInfo}
//german.ClickFinish=Klicken Sie auf "Fertigstellen", um das Setup zu beenden.%n%n{#MyAppExtraInfo}
//italian.ClickFinish=Seleziona "Fine" per uscire dall'installazione.%n%n{#MyAppExtraInfo}
//japanese.ClickFinish=セットアップを終了するには「完了」をクリックしてください。%n%n{#MyAppExtraInfo}
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
//chinesetrad.FinishedRestartLabel=要完成 [name] 的安裝，安裝程式必須重新啟動您的電腦。您想要現在重新啟動電腦嗎？%n%n{#MyAppExtraInfo}
//dutch.FinishedRestartLabel=Setup moet de computer opnieuw opstarten om de installatie van [name] te voltooien. Wilt u nu opnieuw opstarten?%n%n{#MyAppExtraInfo}
//french.FinishedRestartLabel=L'assistant doit redémarrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redémarrer maintenant ?%n%n{#MyAppExtraInfo}
//german.FinishedRestartLabel=Um die Installation von [name] abzuschließen, muss das Setup Ihren Computer neu starten. Möchten Sie jetzt neu starten?%n%n{#MyAppExtraInfo}
//italian.FinishedRestartLabel=Per completare l'installazione di [name], è necessario riavviare il sistema.%n%nVuoi riavviare adesso?%n%n{#MyAppExtraInfo}
//japanese.FinishedRestartLabel=[name] のインストールを完了するためには、コンピューターを再起動する必要があります。すぐに再起動しますか？%n%n{#MyAppExtraInfo}
//korean.FinishedRestartLabel=[name] 설치를 완료하려면 컴퓨터를 다시 시작해야 합니다. 지금 다시 시작하시겠습니까?%n%n{#MyAppExtraInfo}
//polish.FinishedRestartLabel=Aby zakończyć instalację aplikacji [name], instalator musi ponownie uruchomić komputer. Czy chcesz teraz uruchomić komputer ponownie?%n%n{#MyAppExtraInfo}
//portuguese.FinishedRestartLabel=Para completar a instalação do [name], o Assistente de Instalação deverá reiniciar o seu computador. Deseja reiniciar agora?%n%n{#MyAppExtraInfo}
//russian.FinishedRestartLabel=Для завершения установки [name] требуется перезагрузить компьютер. Произвести перезагрузку сейчас?%n%n{#MyAppExtraInfo}
//spanish.FinishedRestartLabel=Para completar la instalación de [name], su sistema debe reiniciarse. ¿Desea reiniciarlo ahora?%n%n{#MyAppExtraInfo}
//ukrainian.FinishedRestartLabel=Для завершення встановлення [name] необхідно перезавантажити ваш комп’ютер. Перезавантажити комп’ютер зараз?%n%n{#MyAppExtraInfo}

[Code]
var // 全局变量
  languageName: string;
  Version: TWindowsVersion;
  NijikaProcessName: string;

function InitializeSetup: Boolean;
var  // 安装程序加载
  BGMusicFile: string;
  BGMusicType: string;
  val: Integer;
  RCTech_WinInstType: String;
  RCTech_DebugVersion: boolean;
  RCTech_NeedStoreApp: boolean;
  RCTech_DoNotPlayBGM: boolean;
begin
  Log('[RainCandy Technology Inno Setup Experience] Info: Initializing Setup...');
  //Log('[RainCandy Technology Inno Setup Experience] Info: Placeholder Message');
  ExtractTemporaryFile('Background.bmp');
  ExtractTemporaryFile('AdvSplash.dll');
  //ExtractTemporaryFile('{#MyAppSetupStyle}');
  Result := True;
  languageName := ActiveLanguage();
  GetWindowsVersionEx(Version);
  RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'InstallationType', RCTech_WinInstType);
  RCTech_DebugVersion := {#MyAppIsDebugVersion}
  RCTech_NeedStoreApp := {#MyAppIsNeedStoreApp}
  NijikaProcessName  :=  ExtractFileName(ParamStr(0));

  if (IsWin64) and (WPSAMD64Main = true) then 
  begin  // 检测 WPS Office 的 64 位版本是否已经在电脑上提前安装，如检查到则弹窗退出
    Log('[RainCandy Technology Inno Setup Experience] Error: {#MyAppMainName} (x64) is already installed...');
    if (languageName = 'chinesesimp') then begin
    	MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainNameCS}的 64 位版本']) + #13 + CustomMessage('RCTMsgMustUninstExistVer')  + #13#13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK);
    end;
    if (languageName = 'chinesetrad') then begin
    	MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainNameCT}的 64 位元版本']) + #13 + CustomMessage('RCTMsgMustUninstExistVer')  + #13#13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK);
    end;
    if (languageName <> 'chinesesimp') and (languageName <> 'chinesetrad') then begin
    	MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainName} (64-bit version)']) + #13 + CustomMessage('RCTMsgMustUninstExistVer')  + #13#13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK);
    end;
    Result := False;
    Exit;
  end;

  if (RCTIsWin8Client = true) then
  begin   // 检查是否 Win 8 Client 版本，是则弹窗提示
    Log('[RainCandy Technology Inno Setup Experience] Info: OS is not officially supported... (WPSOffice_New, Windows 8.x Client)');
    SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgOSNotMeetRequirement'), ['Windows 8.x']) + FmtMessage(CustomMessage('RCTMsgOSMinRequirement'), ['Windows 7, Windows 10']) + #13#13 + CustomMessage('RCTMsgAppTryContinueInst') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);
  end;

  if (RCTIsSilent = true) and (RunTask('wpsoffice.exe', false) or RunTask('wps.exe', false) or RunTask('et.exe', false) or RunTask('wpspdf.exe', false) or RunTask('wpsofd.exe', false)) then
  begin   // 静默安装时检查系统是否还有 WPS Office 的进程，如存在则报错提醒用户先行退出 WPS Office，然后安装程序退出
    Log('[RainCandy Technology Inno Setup Experience] Error: Setup is in silent mode, and {#MyAppMainName} is still running!');
    if (languageName = 'chinesesimp') then begin
      MsgBox(FmtMessage(CustomMessage('RCTMsgAppStillRunning'), ['{#MyAppMainNameCS}']) + #13 + CustomMessage('RCTMsgAppNoticeUserExit') + #13#13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK);
    end;
    if (languageName = 'chinesetrad') then begin
      MsgBox(FmtMessage(CustomMessage('RCTMsgAppStillRunning'), ['{#MyAppMainNameCT}']) + #13 + CustomMessage('RCTMsgAppNoticeUserExit') + #13#13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK);
    end;
    if (languageName <> 'chinesesimp') and (languageName <> 'chinesetrad') then begin
      MsgBox(FmtMessage(CustomMessage('RCTMsgAppStillRunning'), ['{#MyAppMainName}']) + #13 + CustomMessage('RCTMsgAppNoticeUserExit') + #13#13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK);
    end;
    Result:= false;
    Exit;
  end;

  Log('[RainCandy Technology Inno Setup Experience] Info: Pre-install check passed...'); 

  if (RCTIsSilent = true) or (FileExists(ExpandConstant('{src}\NoBGM_RCTechSetup'))) then
  begin  // 如果静默安装或找到禁止播放 BGM 占位符，则禁止 BGM 播放
    Log('[RainCandy Technology Inno Setup Experience] Info: Config "NoBGM_RCTechSetup" detected, disable music playing!');
    RCTech_DoNotPlayBGM := True;
  end else begin
    if (SuppressibleMsgBox(CustomMessage('RCTMsgAskUserPlayBGM'), mbInformation, MB_YESNO, MB_YESNO) = IDNO) then
    begin  // 弹窗询问是否播放 BGM
      Log('[RainCandy Technology Inno Setup Experience] Info: User choosed not to play music.');
      RCTech_DoNotPlayBGM := True;
    end;
    // 对于不允许选择是否播放 BGM 的安装包，弹窗提示进行提醒
    //SuppressibleMsgBox(CustomMessage('RCTMsgWarnUserBGMWillPlay') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);  
  end;

  // 测试版弹窗
  if (RCTech_DebugVersion = true) then begin
    Log('[RainCandy Technology Inno Setup Experience] Info: This application is a debug version.');
    SuppressibleMsgBox(CustomMessage('RCTMsgDebugNotice') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);
  end;

  // 根据安装程序语言对 Splash 重命名
  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then begin
    if (languageName = 'chinesesimp') then begin
      ExtractTemporaryFile('Splash_CS.bmp');
      RenameFile(GetFileName('Splash_CS.bmp'), GetFileName('Splash.bmp'));
    end else begin
      ExtractTemporaryFile('Splash_CT.bmp');
      RenameFile(GetFileName('Splash_CT.bmp'), GetFileName('Splash.bmp'));
    end;
  end else begin
    ExtractTemporaryFile('Splash.bmp');
  end;

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
    //Log('[RainCandy Technology Inno Setup Experience] Info: Plugin BASSMOD prepare complete, start music playing...');
    //BASSMOD_MusicPlay;
  //end;

  // BGM 准备（ufMOD）
  if not (RCTech_DoNotPlayBGM = true) then begin
    Log('[RainCandy Technology Inno Setup Experience] Info: Plugin ufMOD prepare complete, start music playing...');
    PlaySongFile(ExpandConstant('{tmp}\music.xm'));
  end;

  // Splash 开屏图片展示
  if (RCTIsSilent = false) then
  begin
    val:=callplug(0,ExpandConstant('{tmp}\AdvSplash.dll'),'show','2400','1400','400','-1',ExpandConstant('{tmp}\Splash'),'','','','','');
  end;

  Log('[RainCandy Technology Inno Setup Experience] Info: Prepare Complete...');
end;

procedure InitializeWizard();
var
  BackgroundImage: TBitmapImage;
begin  // 安装向导加载
  Log('[RainCandy Technology Inno Setup Experience] Info: Initializing Wizard...');
  WizardForm.LICENSEACCEPTEDRADIO.Checked := true;
  BackgroundImage := TBitmapImage.Create(MainForm);
  BackgroundImage.Parent := MainForm;
  BackgroundImage.SetBounds(0, 0, MainForm.ClientWidth, MainForm.ClientHeight);
  BackgroundImage.Stretch := True;
  BackgroundImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Background.bmp'));
  Log('[RainCandy Technology Inno Setup Experience] Background Load Complete...');
end;

procedure DeinitializeSetup();
begin   // 安装程序退出
  Log('[RainCandy Technology Inno Setup Experience] Info: Deinitializing Setup...');
  //BASSMOD_Free;
  if (WPSIA32Main = false) and (WPSAMD64Main = false) and (WPSHKCUMain = false) and (RCTIsWin8Client = true) then
  begin   // 检查是否未安装 WPS Office 且为 Win 8 系统，是则清理注册表
    Log('[RainCandy Technology Inno Setup Experience] Info: WPS Office not installed & not officially supported OS! Now cleaning registry...');
    RegDeleteKeyIncludingSubkeys(HKLM{MyAppArchRCShort}, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WPSOffice_Setup.exe')
  end;
  Log('[RainCandy Technology Inno Setup Experience] Info: Start to cleaning temp files...');
  DelTree(ExpandConstant('{tmp}\OemFile'), True, True, True);
  DelTree(ExpandConstant('{tmp}\oeminfo'), True, True, True);
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin  // 跳过不必要页面
  result := false;
  //if (PageID = wpLicense) then result := true;
  if (PageID = wpReady) then result := true;
  //if (PageID = wpInfoBefore) then result := true;
  //if (PageID = wpInfoAfter) then result := true;
  //if (PageID = wpFinished) then result := true;
  if (PageID = wpSelectDir) then result := true;
  //if (PageID = wpSelectComponents) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) or (PageID = wpFinished) then result := true;
end;

[Files]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”
; 全屏安装背景图 20230923 Updated （一般不启用）
//Source: "..\Plugins\Background_Win.bmp"; DestDir: {tmp}; DestName: Background.bmp; Flags: dontcopy nocompression;    
Source: "..\Plugins\Background_NGO.bmp"; DestDir: {tmp}; DestName: Background.bmp; Flags: dontcopy nocompression;    

; Splash 文件
Source: "{#RCInnoExpProjectDir}\Splash\*.*"; DestDir: {tmp}; Flags: dontcopy nocompression;

; 视觉效果文件
//Source: "..\Plugins\ISSkin\{#MyAppSetupStyle}"; DestDir: {tmp}; Flags: dontcopy nocompression;

; BGM 文件
//Source: "..\Plugins\1BGM\music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\1BGM\music_wps.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;

; OEM 内容
Source: "{#RCInnoExpProjectDir}\OEMContents\*.*"; DestDir: {tmp}; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\OEMContents_{#MyAppMajorVersion}\*.*"; DestDir: {tmp}; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;
Source: "{#RCInnoExpProjectDir}\OEMContents_{#MyAppMajorVersion}{#RCAppConfType}\*.*"; DestDir: {tmp}; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\OEMContents_{#MyAppMajorVersion}{#RCAppConfType}_{#MyAppArchitecture}\*.*"; DestDir: {tmp}; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;

; Gch 版本 Ink Draw 组件
//Source: "{#RCInnoExpProjectDir}\yComponents\GchInkDraw_11.8.2.10972\*.*"; DestDir: "{tmp}\OemFile\gchfeature_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;
Source: "{#RCInnoExpProjectDir}\yComponents\GchInkDraw_11.8.2.12094\*.*"; DestDir: "{tmp}\OemFile\gchfeature_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;

; 任务栏图标固定
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\pintotaskbar.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\pintotaskbar;

; 多组件模式自动进入编辑模式
Source: "{#RCInnoExpProjectDir}\Conf_1Addon\iscreatenewfile.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\iscreatenewfile;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\iscreatenewfile_cipher.ini"; DestName:"iscreatenewfile.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\iscreatenewfile;

; WPS 协作安装包、启用协作选项与新版 WPS 365 安装界面（12.1.0）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\cooperation.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\ksorcnet\cooperation;
//Source: "{#RCInnoExpProjectDir}\yComponents\xiezuo.exe"; DestDir: {tmp}\OemFile\Externals\xiezuo; Flags: ignoreversion overwritereadonly; Components: main\ksorcnet\cooperation;

; 静默运行 WPS 安装程序
Source: "{#RCInnoExpProjectDir}\Conf_1Addon\silentsetup.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\silentsetup_cipher.ini"; DestName: "silentsetup.ini";DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;

; 禁用 WPS 办公助手托盘图标
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\noqingtrayicon.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\noqingtrayicon;

; 禁止在我的电脑中创建 WPS 云盘图标
Source: "{#RCInnoExpProjectDir}\Conf_1Addon\noqingembedreg.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\noqingembedreg;

; 启用稻壳素材标签页
; 注意，对于 2023 版本，我们还需要 kdocerresnetwork 插件，才能使稻壳素材的下载功能正常工作
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\docertabbutton.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\docertabbutton;
//Source: "{#RCInnoExpProjectDir}\yComponents\kdocerresnetwork_{#MyAppVersion}\*.*"; DestDir: {tmp}\OemFile\addons_raincandy\kdocerresnetwork; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: extra\docertabbutton;

; 禁用程序主页中的搜索框
Source: "{#RCInnoExpProjectDir}\Conf_1Addon\disablehomesearch.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\disablehomesearch;

; PDF 高级功能支持（实验功能）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\pdfadvanced.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\pdfadvanced;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\pdfenhanceversion.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\pdfadvanced;
//Source: "E:\Development\WPS Office\yComponents\PDFAddon_{#MyAppVersion}\*.*"; DestDir: "{tmp}\OemFile\addons_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: experimental\pdfadvanced;
//Source: "E:\Development\WPS Office\yComponents\PDFAddon_11.8.2.12094\*.*"; DestDir: "{tmp}\OemFile\addons_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: experimental\pdfadvanced;

; 发票打印功能（随 PDF 高级功能支持一起安装）
; 之前我们向程序补充的 PDF 组件中，只有发票打印功能是不需要增强版授权就能使用的，所以我们分离出来把它单独安装，以节约安装后程序目录的体积占用
//Source: "E:\Development\WPS Office\yComponents\ElectronicInvoicePrint_{#MyAppVersion}\*.*"; DestDir: "{tmp}\OemFile\addons_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;
//Source: "E:\Development\WPS Office\yComponents\ElectronicInvoicePrint_11.8.2.12094\*.*"; DestDir: "{tmp}\OemFile\addons_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;

; 禁用 WPS PDF（实验功能）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\pdfdisable.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: wpspdf\disable;

; OFD 支持（实验功能）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\ofd_support.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\ksorcofd;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\ofd_nonfinanceicon.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\ksorcofd;
//Source: "{#RCInnoExpProjectDir}\OFD_{#MyAppMajorVersion}\*.*"; DestDir: {tmp}\OemFile; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: extra\ksorcofd;
//Source: "{#RCInnoExpProjectDir}\yComponents\OFD_{#MyAppVersion}\*.*"; DestDir: "{tmp}\OemFileofdplugin_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: extra\ksorcofd;
//Source: "{#RCInnoExpProjectDir}\yComponents\OFD_12.8.0.17004\*.*"; DestDir: "{tmp}\OemFile\ofdplugin_raincandy"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: extra\ksorcofd;

; 公文支持（实验功能）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\officialdocs.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\officialdocs;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\uof_noofficial.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\officialdocs\nouof;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\uof_nowriter.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\officialdocs\writernouof;

; UOF 格式支持（实验功能）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\uof_support.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\ksorcuof;
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\uof_official.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\ksorcuof\enableforofficialdocs;

; 回退旧版登录界面（实验功能）
//Source: "{#RCInnoExpProjectDir}\Conf_1Addon\legacyweblogin.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\legacyweblogin;

; 启用触屏模式支持（实验功能）
Source: "{#RCInnoExpProjectDir}\Conf_1Addon\touchuimode.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: experimental\touchuimode;

; 移除主程序产品配置校验的修补后文件
//Source: "{#RCInnoExpProjectDir}\KrtVerifyPatch\krt_{#MyAppVersion}_{#MyAppArchRC}.dll"; DestName: "krt.dll"; DestDir: {tmp}\OemFile\copytooffice6_raincandy; Flags: ignoreversion overwritereadonly; Components: main;

; VBA 安装包（金山办公打包版）
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_Setup_2052.exe"; DestName: "VBA_Setup.exe"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\ksovba; Languages: chinesesimp; 
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_Setup_1028.exe"; DestName: "VBA_Setup.exe"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\ksovba; Languages: chinesetrad; 
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_Setup_2052.exe"; DestName: "VBA_Setup.exe"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba60; Languages: chinesesimp; 
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\VBA7.1_for_WPS_Silent.exe"; DestName: "VBA_Setup.exe"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\ksovba;

; VBA 安装包（微软官方 MSI）
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1028.MSI"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1031.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1033.MSI"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1036.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1040.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1041.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1043.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_1046.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_2052.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;
//Source: "{#RCInnoExpProjectDir}\VBA_Installer\VBA_71_{#MyAppArchRC}\Vba71_3802.msi"; DestDir: {tmp}\VBA\; Flags: ignoreversion overwritereadonly; Components: extra\ksovba\vba71;

; 微软 Access 数据库引擎安装包
//Source: "{#RCInnoExpProjectDir}\yComponents\AceRedist_{#MyAppArchRC}\AceRedist_2016_en-US.msi"; DestName: "AceRedist.msi"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\aceredist; 
//Source: "{#RCInnoExpProjectDir}\yComponents\AceRedist_{#MyAppArchRC}\AceRedist_2010_zh-CN.msi"; DestName: "AceRedist.msi"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: extra\aceredist; Languages: chinesesimp; 

; 程序配置文件
; Net：联网版   NoNet：离线版   Setup: 安装程序参数
Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_net.ini"; DestName: "oem.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\ksorcnet;
//Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_net_revive.ini"; DestName: "oem.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\ksorcnet;
Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_nonet.ini"; DestName: "oem.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\ksorcnonet;
//Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_nonet_revive.ini"; DestName: "oem.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main\ksorcnonet;
//Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_setup.ini"; DestName: "oem_setup.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_setup_revive.ini"; DestName: "oem_setup.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_setup_{#MyAppArchRC}.ini"; DestName: "oem_setup.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\Conf_{#MyAppPublishType}\oem_setup_{#MyAppArchRC}_revive.ini"; DestName: "oem_setup.ini"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;

; 特别版程序 Company Logo (240118 已去除不再需要)
//Source: "{#RCInnoExpProjectDir}\LogoCompany\*.*"; DestDir: {tmp}\OemFile\logo; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main;

; 联网版程序修改版本号
//Source: "{#RCInnoExpProjectDir}\EditVersion365\*.*"; DestDir: {tmp}\OemFile\cfgs; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: main\ksorcnet;

; 公文相关方正字体
Source: "{#RCInnoExpProjectDir}\FZFonts\fzfonts_raincandy\*.*"; DestDir: {tmp}\OemFile\fzfonts_raincandy; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: extra\fzfonts;
//Source: "{#RCInnoExpProjectDir}\FZFonts\fzfonts_12-1-0_raincandy\*.*"; DestDir: {tmp}\OemFile\fzfonts_12-1-0_raincandy; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Components: extra\fzfonts;

; Windows 8 安装劫持补丁
Source: "{#RCInnoExpProjectDir}\W8ClientPatch\wpsw8patch_x86.dll"; DestName: "wpsw8patch.dll"; DestDir: {syswow64}; Flags: overwritereadonly; Check: RCTIsWin8Client; Components: main; MinVersion: 6.2; OnlyBelowVersion: 10.0;
//Source: "{#RCInnoExpProjectDir}\W8ClientPatch\wpsw8patch_x64.dll"; DestName: "wpsw8patch.dll"; DestDir: {sysnative}; Flags: overwritereadonly 64bit; Check: RCTIsWin8Client; Components: main; MinVersion: 6.2; OnlyBelowVersion: 10.0;

; 产品配置劫持补丁 By YukiIsait
//Source: "{#RCInnoExpProjectDir}\yInstallerHijacker\WPSInstallerHijacker.exe"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\yInstallerHijacker\HijackerRunOutput.bat"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\yInstallerHijacker\PatchedProductData\{#MyAppTypeVersion}_{#MyAppVersion}_{#MyAppArchRC}.dat"; DestName: "product.dat"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\yInstallerHijacker\PatchedProductData\{#MyAppTypeVersion}_{#MyAppVersion}_{#MyAppArchRC}.dat"; DestName: "product.dat"; DestDir: {tmp}\OemFile\cfgs; Flags: ignoreversion overwritereadonly; Components: main;

; 雨科软件研究项目配置
//Source: "{#RCInnoExpProjectDir}\zMNConfig\MNConfig_{#MyAppMajorVersion}.ini"; DestName: "MNConfig.ini"; DestDir: {tmp}\OemFile\cfgs\oeminfo; Flags: ignoreversion overwritereadonly; Components: main;
//Source: "{#RCInnoExpProjectDir}\zMNConfig\MNConfig_{#MyAppMajorVersion}{#RCAppConfType}.ini"; DestName: "MNConfig.ini"; DestDir: {tmp}\OemFile\cfgs\oeminfo; Flags: ignoreversion overwritereadonly; Components: main;
Source: "{#RCInnoExpProjectDir}\zMNConfig\MNConfig_{#MyAppMajorVersion}{#RCAppConfType}_{#MyAppArchRC}.ini"; DestName: "MNConfig.ini"; DestDir: {tmp}\OemFile\cfgs\oeminfo; Flags: ignoreversion overwritereadonly; Components: main;

; 主程序安装包
Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}_Patched.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}_{#MyAppArchRC}_Patched.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}_VBA.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}_VBA_FZFonts.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}_Edu.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\1Extracted\WPS{#MyAppTypeVersion}_{#MyAppVersion}_Edu_FZFonts.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;
//Source: "E:\Software\WPS Office\64位测试\WPS_bbs_x64_Beta_17158.exe"; DestDir: {tmp}; DestName: "WPSOffice_Setup.exe"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly nocompression; Components: main;

[Registry]
; 本段处理程序在注册表中的键值
Root:HKLM{#MyAppArchRCShort}; Subkey:"SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WPSOffice_Setup.exe"; ValueType: string; ValueName: VerifierDlls; ValueData: "wpsw8patch.dll"; check: RCTIsWin8Client; MinVersion: 6.2; OnlyBelowVersion: 10.0;
Root:HKLM{#MyAppArchRCShort}; Subkey:"SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WPSOffice_Setup.exe"; ValueType: dword; ValueName: VerifierDebug; ValueData: 0; check: RCTIsWin8Client; MinVersion: 6.2; OnlyBelowVersion: 10.0;
Root:HKLM{#MyAppArchRCShort}; Subkey:"SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WPSOffice_Setup.exe"; ValueType: dword; ValueName: VerifierFlags; ValueData: 2147483648; check: RCTIsWin8Client; MinVersion: 6.2; OnlyBelowVersion: 10.0;
Root:HKLM{#MyAppArchRCShort}; Subkey:"SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WPSOffice_Setup.exe"; ValueType: dword; ValueName: GlobalFlag; ValueData: 256; check: RCTIsWin8Client; MinVersion: 6.2; OnlyBelowVersion: 10.0;

[Run]
; 处理 oem.ini 配置文件
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\noqingtrayicon.ini {tmp}\oem.ini"; Flags: runhidden; Components: extra\noqingtrayicon;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\noqingembedreg.ini {tmp}\oem.ini"; Flags: runhidden; Components: extra\noqingembedreg;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\docertabbutton.ini {tmp}\oem.ini"; Flags: runhidden; Components: extra\docertabbutton;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\disablehomesearch.ini {tmp}\oem.ini"; Flags: runhidden; Components: extra\disablehomesearch;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\pdfadvanced.ini {tmp}\oem.ini"; Flags: runhidden; Components: experimental\pdfadvanced;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\pdfenhanceversion.ini {tmp}\oem.ini"; Flags: runhidden; Components: experimental\pdfadvanced;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\pdfdisable.ini {tmp}\oem.ini"; Flags: runhidden; Components: wpspdf\disable;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\ofd_support.ini {tmp}\oem.ini"; Flags: runhidden; Components: extra\ksorcofd;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\ofd_nonfinanceicon.ini {tmp}\oem.ini"; Flags: runhidden; Components: extra\ksorcofd;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\uof_noofficial.ini {tmp}\oem.ini"; Flags: runhidden; Components: experimental\officialdocs;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\officialdocs.ini {tmp}\oem.ini"; Flags: runhidden; Components: experimental\officialdocs;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\legacyweblogin.ini {tmp}\oem.ini"; Flags: runhidden; Components: experimental\legacyweblogin;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\touchuimode.ini {tmp}\oem.ini"; Flags: runhidden; Components: experimental\touchuimode;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\oem_setup.ini {tmp}\oem.ini"; Flags: runhidden; Components: main;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\silentsetup.ini {tmp}\oem.ini"; Flags: runhidden skipifnotsilent; Components: main;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\pintotaskbar.ini {tmp}\oem.ini"; Flags: runhidden; Components: main\pintotaskbar;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\iscreatenewfile.ini {tmp}\oem.ini"; Flags: runhidden; Components: main\iscreatenewfile;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini+{tmp}\cooperation.ini {tmp}\oem.ini"; Flags: runhidden; Components: main\ksorcnet\cooperation;
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c copy /b {tmp}\oem.ini {tmp}\OemFile\cfgs\oem.ini"; Flags: runhidden; Components: main;

; 取消授权文件的只读、隐藏、系统属性
; 其他老师的版本中，出于防止激活失效的考虑，会添加上述属性
; 所以我们在这里必须解锁文件，防止接下来的序列号无法成功写入
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "/c attrib -r -h -s {commonappdata}\Kingsoft\office6\license2.dat"; Flags: runhidden; Components: main;

; 运行 YukiIsait 产品配置劫持补丁
; 因为 WPS 365 商业版中配置了对 OEM 配置文件的 AES 签名验证
; 所以我们需要使用劫持补丁在产品配置中禁用本选项
//Filename: "{tmp}\WPSInstallerHijacker.exe"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Parameters: "WPSOffice_Setup.exe"; Flags: runhidden nowait; Components: main;
//Filename: "{tmp}\HijackerRunOutput.bat"; StatusMsg: "{cm:RCTISERunInstPrepare}"; Flags: shellexec runhidden nowait; Components: main;

; 运行 WPS Office 安装程序
; 注意我们这里有两个运行命令，用于普通安装和静默安装
; 这样做的目的是，让普通安装情况下，让安装程序读取已安装程序的路径（如有），而不是每次安装都需要手动指定安装路径
Filename: "{tmp}\WPSOffice_Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Flags: skipifsilent; Components: main;
Filename: "{tmp}\WPSOffice_Setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "-D=""{app}"""; Flags: skipifnotsilent; Components: main;

; 取消建立 PDF 文件关联
//Filename: "{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe"; Parameters: "-unassopdf"; StatusMsg: "{cm:RCTISERunIconSetup}"; check: WPS{#MyAppArchRC}Main; Components: wpspdf\disable; BeforeInstall: SetMarqueeProgress(True);

; 重命名 wpspdf.exe 以阻止其被启动
//Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunFinishingInst}"; Parameters: "/C move ""{reg:HKLM32\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\wpspdf.exe"" ""{reg:HKLM32\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\wpspdf.exe.BAK"""; check: WPS{#MyAppArchRC}Main; Components: wpspdf\disable;

; 将 OemFile 文件夹的文件复制到程序安装目录

; 12.1.0 方正字体安装新目录
//Filename: "{tmp}\oeminfo\oem.exe"; Parameters: "/copydir=OemFile\fzfonts_12-1-0_raincandy /ShellVarContext=current /RelativeDir=APPDATA /todir='kingsoft\office6\docerFonts'"; StatusMsg: "{cm:RCTISERunMainAppPrepare}"; check: WPS{#MyAppArchRC}Main; Components: extra\fzfonts;

; 建立 OFD 文件关联
//Filename: "{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe"; Parameters: "-assoofd"; StatusMsg: "{cm:AssocingFileExtension,{#MyAppMainName},OFD}"; check: WPS{#MyAppArchRC}Main; Components: extra\ksorcofd\fileassoc; BeforeInstall: SetMarqueeProgress(True);

; 让用户自行选择窗口管理模式
Filename: "{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe"; Parameters: "-showallinone"; StatusMsg: "正在等待选择窗口管理模式..."; Flags: skipifdoesntexist skipifsilent; check: not KSOClassicMode; Components: main; BeforeInstall: SetMarqueeProgress(False);

; 重建图标，确保 OFD 文件关联图标正常显示
//Filename: "{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe"; Parameters: "-rebuildicon"; StatusMsg: "{cm:RCTISERunIconSetup}"; check: WPS{#MyAppArchRC}Main; BeforeInstall: SetMarqueeProgress(True);

; 重新注册字体以安装公文相关方正字体
Filename: "{reg:HKLM{#MyAppArchRCShort}\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksomisc.exe"; Parameters: "-regmtfont"; StatusMsg: "正在注册字体，请稍候..."; check: WPS{#MyAppArchRC}Main; Components: extra\fzfonts; BeforeInstall: SetMarqueeProgress(True);

; 导入所需要的注册表

; 向程序注入序列号

; 安装 VBA 运行库（金山办公打包版）
Filename: "{tmp}\VBA_Setup.exe"; StatusMsg: "{cm:RCTISERunExtraSetupPrepare, VBA 支持库}"; check: WPS{#MyAppArchRC}Main; Components: extra\ksovba;

; 安装 VBA 运行库（微软 MSI 安装包）
//Filename: "{sys}\msiexec.exe"; StatusMsg: "{cm:RCTISERunExtraSetupPrepare, VBA 支持库}"; Parameters: "/i ""{tmp}\VBA\Vba71.msi"" /passive"; check: WPS{#MyAppArchRC}Main; Components: extra\ksovba\vba71; BeforeInstall: SetMarqueeProgress(True);
//Filename: "{sys}\msiexec.exe"; StatusMsg: "{cm:RCTISERunExtraSetupPrepare, VBA 支持库}"; Parameters: "/i ""{tmp}\VBA\Vba71_1033.msi"" /passive"; check: WPS{#MyAppArchRC}Main; Components: extra\ksovba\vba71;
//Filename: "{sys}\msiexec.exe"; StatusMsg: "{cm:RCTISERunExtraSetupPrepare, VBA 支持库}"; Parameters: "/i ""{tmp}\VBA\Vba71_2052.msi"" /passive"; check: WPS{#MyAppArchRC}Main; Components: extra\ksovba\vba71; Languages: chinesesimp; 

; 清理 OemFile 文件的备份，优化程序占用的磁盘空间
Filename: "{tmp}\oeminfo\oem.exe"; StatusMsg: "{cm:RCTISERunFinishingInst}"; Parameters: "/ShellVarContext=current /RelativeDir=INSTDIR /rmdir='utility\backup\OemFile'"; check: WPS{#MyAppArchRC}Main; Components: main;

; 删除 Windows 8.x 客户端安装补丁
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunFinishingInst}"; Parameters: "/C del %windir%\System32\wpsw8patch.dll /Q /F"; Flags: runhidden; check: RCTIsWin8Client;
Filename: "{sys}\cmd.exe"; StatusMsg: "{cm:RCTISERunFinishingInst}"; Parameters: "/C del %windir%\SysWOW64\wpsw8patch.dll /Q /F"; Flags: runhidden; check: RCTIsWin8Client;

; 完成安装时启动程序
//Filename: "{reg:HKLM\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\ksolaunch.exe"; Description: "{cm:LaunchProgram,{#MyAppMainName}}"; Flags: postinstall nowait skipifsilent; Check: WPS{#MyAppArchRC}Main;
//Filename: "{reg:HKCU\Software\kingsoft\Office\6.0\Common,InstallRoot}\office6\ksolaunch.exe"; Description: "{cm:LaunchProgram,{#MyAppMainName}}"; Flags: postinstall nowait skipifsilent; Check: WPSHKCUMain;
//Filename: "{reg:HKLM\SOFTWARE\Kingsoft\PDF\Common,InstallRoot}\office6\ksolaunch.exe"; Description: "{cm:LaunchProgram,{#MyAppMainName}}"; Flags: postinstall nowait skipifsilent; Check: KPDF{#MyAppArchRC}Main;

[Types]
// 安装类型
Name: "default"; Description: "{cm:RCTISEDefaultInstType}"; Flags: iscustom;

[Components]
// 安装程序参数
Name: main; Description: "{cm:RCTISEMainApp}"; Types: default; Flags: fixed;
Name: main\ksorcnet; Description: "{cm:RCTISEInstOnlineVer}"; Flags: exclusive;
//Name: main\ksorcnet\cooperation; Description: "{cm:RCTISEToInst, WPS 协作}";
Name: main\ksorcnonet; Description: "{cm:RCTISEInstOfflineVer} - {cm:RCTISEDisableOnlineSvc}"; Flags: exclusive;
//Name: main\pintotaskbar; Description: "如果选择创建桌面快捷方式，则将程序图标固定到任务栏"; Flags: dontinheritcheck;
Name: main\iscreatenewfile; Description: "在多组件模式下，使程序在启动时直接进入编辑状态"; Flags: dontinheritcheck;
Name: extra; Description: "{cm:RCTISEExtraFeature}"; Types: default; Flags: fixed;
Name: extra\ksovba; Description: "{cm:RCTISEToInst, {cm:RCTISELibrarySupport,VBA}}"; Types: default;
Name: extra\fzfonts; Description: "安装公文相关方正字体";
//Name: extra\noqingtrayicon; Description: "禁用 WPS 办公助手托盘图标";
Name: extra\noqingembedreg; Description: "禁止在我的电脑中创建 WPS 云盘图标";
//Name: extra\docertabbutton; Description: "启用稻壳素材标签页";
Name: extra\disablehomesearch; Description: "禁用程序主页中的搜索框";
//Name: extra\ksorcofd; Description: "{cm:RCTISEToInst,{cm:RCTISEFileFormatSupport, OFD}}"; Flags: dontinheritcheck; MinVersion: 6.1;
//Name: extra\ksorcofd\fileassoc; Description: "{cm:RCTISEAssocFileExtension,OFD}"; Flags: dontinheritcheck; MinVersion: 6.1;
Name: experimental; Description: "{cm:RCTISEExpFeature}（这些功能可能不稳定，请谨慎选择）"; Types: default; Flags: fixed;
//Name: experimental\legacyweblogin; Description: "回退旧版登录页，解决微博账号和小米账号在系统重启后登录失效";
//Name: experimental\pdfadvanced; Description: "{cm:RCTISEToEnablePremium, WPS PDF }（{cm:RCTASEditNotAvailable}）"; 
//Name: experimental\officialdocs; Description: "启用 WPS 文字的公文相关功能"; 
//Name: experimental\officialdocs\nouof; Description: "不要将公文文档保存为标文通（UOF）格式";
//Name: experimental\officialdocs\writernouof; Description: "禁用 WPS 文字的 UOF 格式支持以确保能够正常调用公文模板";
Name: experimental\touchuimode; Description: "启用触屏模式支持";

[Tasks]
// 安装程序可选任务
//Name: ksorcnet; Description: "安装联网版本"; GroupDescription: "安装选项："; Flags: exclusive;
//Name: ksorcnonet; Description: "安装离线版本（禁用联网服务）"; GroupDescription: "安装选项："; Flags: exclusive unchecked;

[Icons]
// 快捷方式创建相关
