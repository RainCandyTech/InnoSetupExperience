; MyProgram_Example.iss
; Made with love by RainCandy Technology - 雨糖科技 以爱敬献
; 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

; 本脚本以《Heaven For Death》为例，展示雨糖科技安装体验的功能。

#define MyAppName "My Program"
#define MyAppNameCS "我的程序"
#define MyAppMainName "My Program"
#define MyAppMainNameCS "我的程序"
#define MyAppMainNameCT "我的程式"
#define MyAppVersion "1.0.0.0"
#define MyAppMajorVersion "1"
#define MyAppMarketVersion "1"
#define MyAppPublisher "RainCandy Technology"
#define MyAppURL "http://raincandy.1337.moe/"
#define WizardImage "WizModernImage-240829"
#define WizardImageConfig SourcePath + "\..\Artworks\" + WizardImage + ".ini"
#define WizardImageAuthor str (ReadIni(WizardImageConfig, "WindoseInstaller", "ArtworkInfo", ""))
#define MyAppExtraInfo WizardImageAuthor
#define MyAppExeName "Game.exe"
#define MyAppOutputName "MyProgram_Example"
//#define MyAppTypeVersion ""
#define MyAppRevisionVer "rNext"
#define MyAppRevisionDate "180529"
#define MyAppSetupBGM "true"
#define RCBGMAllowNotPlay "true"
#define MyAppSetupBGMType "xm"
//#define MyAppSetupStyle "Office2007.cjstyles"
#define MyAppArchitecture "x86"
#define MyAppArchRC "IA32"
#define MyAppArchRCShort "32"
#define MyAppIsDebugVersion "true"   ;正式外发版本一定要关闭！！！
//#define MyAppPublishType ""
#define MyAppShowFreePrevideMsg "false"
#define MyAppIsNeedStoreApp "false"
#define RCExtraStoreApp ""
#define RCExtraStoreAppCS ""
#define RCStoreAppNeedNTMajorVer "6"
#define RCStoreAppNeedNTMinorVer "2"
//#define RCInnoExpVer "v6.3.3.8_241029"
#define RCAppConfType ""
//#define RCInnoExpPluginSignMark "_signed"
#define RCInnoExpProjectDir "F:\GameLibrary\Heaven For Death"

#include "..\Include\1RainCandyTech_InnoExp.iss"
#include "..\Include\1RCTInnoExp_LangCS.iss"
#include "..\Include\1RCTInnoExp_LangCT.iss"
//#include "..\Include\1RCTInnoExp_LangJP.iss"
//#include "..\Include\BASSMOD.iss"
#include "..\Include\ufMOD.iss"
//#include "..\Include\Splash.iss"
//#include "..\Include\ISSkin.iss"
//#include "..\Include\ISTask.iss"
//#include "..\Include\MicrosoftStore_SvcChk.iss"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
//AppId=
AppVersion=v{#MyAppVersion}_{#MyAppArchitecture}_{#MyAppRevisionVer}_{#MyAppRevisionDate}
AppName={#MyAppName}
//AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright="Made with love by RainCandy Technology"
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoVersion={#MyAppVersion}
//CreateAppDir=no
LicenseFile="..\Documents\license_other.rtf"
//InfoBeforeFile=
//InfoAfterFile="..\Documents\credits_other.rtf"
OutputDir=userdocs:Inno Setup Examples Output
OutputBaseFilename={#MyAppOutputName}
Compression=lzma2
SolidCompression=yes
DefaultDirName={pf}\My Program
//ArchitecturesAllowed=win64
//ArchitecturesInstallIn64BitMode=x64
//Uninstallable=no
//SetupIconFile="..\Icons\ahoge_nijika.ico"
DisableWelcomePage=false
WizardImageFile="..\Artworks\{#WizardImage}.bmp"
//WizardSmallImageFile="..\Artworks\WizardSmallImage0.bmp"
WizardSmallImageFile="..\Artworks\rclogo_inno_modern.bmp"
//SetupLogging=yes
//MinVersion=6.1
//WizardStyle=modern
//WindowVisible=yes
VersionInfoDescription={#MyAppName}
//VersionInfoOriginalFileName={#MyAppOutputName}.exe
RestartIfNeededByRun=no
DefaultGroupName={#MyAppName}
PrivilegesRequired=admin
UninstallDisplayIcon={app}\Game.exe
//signtool=CSignTool

[Languages]
Name: "chinesesimp"; MessagesFile: "..\Languages\ChineseSimplified.isl"; LicenseFile: "..\Documents\license_other_cn.rtf";
Name: "chinesetrad"; MessagesFile: "..\Languages\ChineseTraditional.isl";
//Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl";
Name: "english"; MessagesFile: "compiler:Default.isl";
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
// 20251116_RainCandyTech_ISEBeveledLabel
BeveledLabel=Made with love by RainCandy Technology
chinesesimp.BeveledLabel=雨糖科技 以爱敬献
chinesetrad.BeveledLabel=雨糖科技 以愛敬獻
//japanese.BeveledLabel=Made with love by RainCandy Technology

// 20251130_RainCandyTech_SloganAtISEBegin
ClickNext=Click Next to continue, or Cancel to exit Setup.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
chinesesimp.ClickNext=单击“下一步”继续，或单击“取消”退出安装程序。%n%n雨糖科技 以爱敬献 | 梦想成真 生生不息%n%n{#MyAppExtraInfo}
chinesetrad.ClickNext=按 「下一步」 繼續安裝，或按 「取消」 結束安裝程式。%n%n雨糖科技 以愛敬獻 | 夢想成真 生生不息%n%n{#MyAppExtraInfo}
//dutch.ClickNext=Klik op Volgende om verder te gaan of op Annuleren om Setup af te sluiten.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//french.ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//german.ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//italian.ClickNext=Seleziona "Avanti" per continuare, o "Annulla" per uscire.%n%nMade with love by RainCandy Technology | Dream it through%n%n{#MyAppExtraInfo}
//japanese.ClickNext=続行するには「次へ」、セットアップを終了するには「キャンセル」をクリックしてください。%n%nRainCandy Technology が愛を込めて作りました | 夢を現実に、生命を永遠に%n%n{#MyAppExtraInfo}
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
chinesetrad.FinishedRestartLabel=要完成 [name] 的安裝，安裝程式必須重新啟動您的電腦。您想要現在重新啟動電腦嗎？%n%n{#MyAppExtraInfo}
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

[CustomMessages]
CurrentProcessName=The process name of Setup is:
chinesesimp.CurrentProcessName=安装程序的进程名称是：
ParamDetected=Specific parameter is detected!
chinesesimp.ParamDetected=已检测到特定参数！

[Code]
function InitializeSetup: Boolean;
var  // 安装程序加载
  BGMusicFile: string;
  BGMusicType: string;
  //val: Integer;
  j: Integer;
begin
  AiMofSetupInit;
  //Log('[Windose Installer] Info: Placeholder Message');
  //ExtractTemporaryFile('Background.bmp');
  //ExtractTemporaryFile('AdvSplash.dll');
  //ExtractTemporaryFile('{#MyAppSetupStyle}');
  Result := True;

  // 检查当前进程名，并弹窗提示
  SuppressibleMsgBox(CustomMessage('CurrentProcessName') + #13 + ProcessName + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK, MB_OK);

  // 检测到指定参数（/KLuoNuoYa）时，退出安装程序
  for j := 1 to ParamCount do
    if (CompareText(ParamStr(j), '/KLuoNuoYa') = 0) then
    begin
      SuppressibleMsgBox(CustomMessage('ParamDetected') + #13 + CustomMessage('RCTMsgSetupExit'), mbError, MB_OK, MB_OK);
      Result := False;
      Exit;
    end;

  Log('[Windose Installer] Info: Pre-install check passed...'); 
  AiMofPostChkInIt;
  
  // 根据安装程序语言对 Splash 重命名
  //if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then begin
    //if (languageName = 'chinesesimp') then begin
      //ExtractTemporaryFile('Splash_CS.bmp');
      //RenameFile(GetFileName('Splash_CS.bmp'), GetFileName('Splash.bmp'));
    //end else begin
      //ExtractTemporaryFile('Splash_CT.bmp');
      //RenameFile(GetFileName('Splash_CT.bmp'), GetFileName('Splash.bmp'));
    //end;
  //end else begin
    //ExtractTemporaryFile('Splash.bmp');
  //end;

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

  // Splash 开屏图片展示
  //if (RCTIsSilent = false) then
  //begin
    //val:=callplug(0,ExpandConstant('{tmp}\AdvSplash.dll'),'show','2400','1400','400','-1',ExpandConstant('{tmp}\Splash'),'','','','','');
  //end;

  Log('[Windose Installer] Info: Prepare Complete...');
end;

procedure InitializeWizard();
//var
  //BackgroundImage: TBitmapImage;
begin  // 安装向导加载
  Log('[Windose Installer] Info: Initializing Wizard...');
  //WizardForm.LICENSEACCEPTEDRADIO.Checked := true;
  //BackgroundImage := TBitmapImage.Create(MainForm);
  //BackgroundImage.Parent := MainForm;
  //BackgroundImage.SetBounds(0, 0, MainForm.ClientWidth, MainForm.ClientHeight);
  //BackgroundImage.Stretch := True;
  //BackgroundImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Background.bmp'));
  //Log('[Windose Installer] Background Load Complete...');
end;

procedure DeinitializeSetup();
begin   // 安装程序退出
  Log('[Windose Installer] Info: Deinitializing Setup...');
  //Log('[Windose Installer] Info: Start to cleaning temp files...');
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin  // 跳过不必要页面
  result := false;
  //if (PageID = wpLicense) then result := true;
  //if (PageID = wpReady) then result := true;
  //if (PageID = wpInfoBefore) then result := true;
  //if (PageID = wpInfoAfter) then result := true;
  //if (PageID = wpFinished) then result := true;
  //if (PageID = wpSelectDir) then result := true;
  //if (PageID = wpSelectComponents) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) or (PageID = wpFinished) then result := true;
end;

[Files]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”
; 全屏安装背景图 20230923 Updated （一般不启用）
//Source: "..\Plugins\Background_Win.bmp"; DestDir: {tmp}; DestName: Background.bmp; Flags: dontcopy nocompression;    
//Source: "..\Plugins\Background_NGO.bmp"; DestDir: {tmp}; DestName: Background.bmp; Flags: dontcopy nocompression;    

; 视觉效果文件
//Source: "..\Plugins\ISSkin\{#MyAppSetupStyle}"; DestDir: {tmp}; Flags: dontcopy nocompression;

; BGM 文件
//Source: "..\Plugins\1BGM\music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\1BGM\music_mysetup_example.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression; 

; 主程序文件
//Source: "{#RCInnoExpProjectDir}\HFD本体\*.*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;
Source: "{#RCInnoExpProjectDir}\请在得到密码并通关后解压.zip"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;
Source: "{#RCInnoExpProjectDir}\游玩前请先阅读.txt"; DestDir: "{app}"; Flags: isreadme ignoreversion recursesubdirs createallsubdirs overwritereadonly;

[Types]
// 安装类型
//Name: "default"; Description: "{cm:RCTISEDefaultInstType}"; Flags: iscustom;

[Components]
// 安装程序参数

[Tasks]
// 安装程序可选任务

[Icons]
// 快捷方式创建相关
Name: "{group}\My Program"; Filename: "{app}\Game.exe";
