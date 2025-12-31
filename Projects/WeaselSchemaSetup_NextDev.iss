; 小狼毫配置方案整合包 By YukiIsait - 雨糖科技 Inno Setup 安装体验脚本
; Made with love by RainCandy Technology
; 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

#define MyAppName "小狼毫配置方案"
#define MyAppNameCS "小狼毫配置方案"
#define MyAppMainName "Weasel Input"
#define MyAppMainNameCS "小狼毫输入法"
#define MyAppMainNameCT "小狼毫輸入法"
#define MyAppVersion "2.0.0"
//#define MyAppMajorVersion "2"
//#define MyAppMarketVersion "0"
//#define MyAppPublisher "RainCandy Technology"
#define MyAppPublisher "YukiIsait"
#define MyAppURL "http://raincandy.tech/"
#define MyAppExtraInfo ""
//#define MyAppExtraInfo "Artwork: pixiv @Kyokaz"   ;c0
//#define MyAppExtraInfo "Artwork: しろううらやま (@urayamashiro)"   ;c3
//#define MyAppExtraInfo "Artwork: モズ (@sushiuma_m_)"   ;c4
//#define MyAppExtraInfo "Source of artwork: にゃるら (@nyalra)"   ;c5
//#define MyAppExtraInfo "Artwork: pixiv @MIWV"   ;c6
//#define MyAppExtraInfo "Artwork: @shiro96haru"   ;c7
//#define MyAppExtraInfo "Artwork: ぜつよちまよ (@zetsuyochimayo)"   ;b0, b3, b8
//#define MyAppExtraInfo "Artwork: ちょうはつ (@L_hair_)"   ;b2
//#define MyAppExtraInfo "Artwork: まよ (@oekaki_bibbi)"   ;b4
//#define MyAppExtraInfo "Artwork: zer0円ぜろえん💸 (@zer0801192)"   ;b5
//#define MyAppExtraInfo "Artwork: pixiv @messyCode&"   ;b6
//#define MyAppExtraInfo "Artwork: いくしー (@Ixy)"   ;b7
//#define MyAppExtraInfo "Artwork: KRSK (@SK_tsu96)"   ;b9
//#define MyAppExtraInfo "Artwork: pixiv @画师JW"   ;c240216
#define MyAppExeName "WeaselSchemaSetup"
#define MyAppOutputName "WeaselSchemaSetup"
#define MyAppTypeVersion "0"
#define MyAppRevisionVer "0"
#define MyAppRevisionDate "240816"
#define MyAppSetupBGMType "xm"
//#define MyAppSetupStyle "Office2007.cjstyles"
#define MyAppArchitecture "x86"
#define MyAppArchRC "IA32"
#define MyAppArchRCShort "32"
#define MyAppIsDebugVersion "false"
#define MyAppPublishType ""
//#define MyAppPublishType "_stage"
#define MyAppIsNeedStoreApp "false"
//#define RCExtraStoreApp ""
//#define RCExtraStoreAppCS ""
//#define RCStoreAppNeedNTMajorVer "6"
//#define RCStoreAppNeedNTMinorVer "2"
#define RCInnoExpVer "v6.3.3.0_240817"
#define RCAppConfType ""
#define RCInnoExpPluginSignMark "_signed"
#define RCInnoExpProjectDir "E:\Development\WeaselSchemaSetup"

#include "..\Include\1RainCandyTech_InnoExp.iss"
#include "..\Include\1RCTInnoExp_LangCS.iss"
//#include "..\Include\1RCTInnoExp_LangCT.iss"
//#include "..\Include\1RCTInnoExp_LangJP.iss"
//#include "..\Include\BASSMOD.iss"
#include "..\Include\ufMOD.iss"
//#include "..\Include\Splash.iss"
//#include "..\Include\ISSkin.iss"
//#include "..\Include\MicrosoftStore_SvcChk.iss"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{CFC336F3-B7AA-4064-9188-657B54B2B0EB}
AppName={#MyAppName}
AppVersion=v{#MyAppVersion}.{#MyAppRevisionVer}_{#MyAppRevisionDate}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
//AppCopyright="Made with love by RainCandy Technology"
AppCopyright="Copyright (C) 2024 YukiIsait"
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoVersion={#MyAppVersion}.{#MyAppRevisionVer}
//CreateAppDir=no
LicenseFile="{#RCInnoExpProjectDir}\Resources\License.rtf"
//InfoBeforeFile=
InfoAfterFile="..\Documents\credits_weaselschema.rtf"
OutputDir="..\Output"
OutputBaseFilename={#MyAppOutputName}
Compression=lzma2/max
SolidCompression=yes
DefaultDirName={code:GetDefaultDirName}
//ArchitecturesAllowed=win64
//ArchitecturesInstallIn64BitMode=x64
Uninstallable=no
//SetupIconFile="..\Icons\ahoge_nijika.ico"
SetupIconFile="{#RCInnoExpProjectDir}\Resources\Icon.ico"
DisableWelcomePage=false
//WizardImageFile="..\Artworks\WizModernImage-c0.bmp"
WizardImageFile="{#RCInnoExpProjectDir}\Resources\WizardImage.bmp"
//WizardSmallImageFile="..\Artworks\WizardSmallImage0.bmp"
WizardSmallImageFile="..\Artworks\rclogo_inno_modern.bmp"
//SetupLogging=yes
MinVersion=6.1
WizardStyle=classic
//WindowVisible=yes
VersionInfoDescription={#MyAppName}
VersionInfoOriginalFileName={#MyAppOutputName}.exe
RestartIfNeededByRun=no
DefaultGroupName={#MyAppName}
PrivilegesRequired=admin
UninstallDisplayIcon={app}\MyProg.exe
DisableDirPage=yes
UsePreviousAppDir=no
AlwaysShowDirOnReadyPage=yes
signtool=CSignTool

[Languages]
Name: "chinesesimp"; MessagesFile: "..\Languages\ChineseSimplified.isl";
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
// 20240717_RainCandyTech_11th_ISEBeveledLabel
BeveledLabel=To feel something.
chinesesimp.BeveledLabel=感知内心 触碰万物
//chinesetrad.BeveledLabel=感知內心 觸碰萬物
//japanese.BeveledLabel=あなたの夢が実現するのを見たいから

// 20240703_RainCandyTech_SloganAtISEBegin
ClickNext=Click Next to continue, or Cancel to exit Setup.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
chinesesimp.ClickNext=单击“下一步”继续，或单击“取消”退出安装程序。%n%n雨糖科技 荣誉制作 | 大鸣大放 年轻绚烂%n%n{#MyAppExtraInfo}
//chinesetrad.ClickNext=按 「下一步」 繼續安裝，或按 「取消」 結束安裝程式。%n%n雨糖科技 榮譽製作 | 大鳴大放 年輕絢爛%n%n{#MyAppExtraInfo}
//dutch.ClickNext=Klik op Volgende om verder te gaan of op Annuleren om Setup af te sluiten.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//french.ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//german.ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//italian.ClickNext=Seleziona "Avanti" per continuare, o "Annulla" per uscire.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//japanese.ClickNext=続行するには「次へ」、セットアップを終了するには「キャンセル」をクリックしてください。%n%nRainCandy Technology が愛を込めて作りました%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//korean.ClickNext=다음을 클릭하여 계속하거나 취소를 클릭하여 설치를 종료합니다.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//polish.ClickNext=Kliknij przycisk Dalej, aby kontynuować, lub Anuluj, aby zakończyć instalację.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//portuguese.ClickNext=Clique em Seguinte para continuar ou em Cancelar para cancelar a instalação.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//russian.ClickNext=Нажмите «Далее», чтобы продолжить, или «Отмена», чтобы выйти из программы установки.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//spanish.ClickNext=Haga clic en Siguiente para continuar o en Cancelar para salir de la instalación.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}
//ukrainian.ClickNext=Натисніть «Далі», щоб продовжити, або «Скасувати» для виходу з програми встановлення.%n%nMade with love by RainCandy Technology%nFor a unrestrained and gorgeous youth%n%n{#MyAppExtraInfo}

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

// 20240803_RainCandyTech_BTR-IjichiNijika_ISESelectTasksDesc
//SelectTasksDesc=My dream might come true soon...
//chinesesimp.SelectTasksDesc=我的梦想，搞不好能实现......
//chinesetrad.SelectTasksDesc=我的夢想，搞不好能實現......
//japanese.SelectTasksDesc=私の夢、叶っちゃうかもな......

// 20240803_RainCandyTech_BTR-YamadaRyo_ISEBeveledLabel
//BeveledLabel=Once you give up your individuality, it's the same as death
//chinesesimp.BeveledLabel=一旦舍弃了个性，就跟死了没区别
//chinesetrad.BeveledLabel=一旦捨棄了個性，就跟死了沒區別
//japanese.BeveledLabel=個性捨てたら死んでるのと一緒だよ

// 20240803_RainCandyTech_BTR-KitaIkuyo_ISEBeveledLabel
//BeveledLabel=I mean, don't you feel like a band is a second family?
//chinesesimp.BeveledLabel=你想啊，乐队就像是第二个家庭吧？
//chinesetrad.BeveledLabel=你想啊，樂隊就像是第二個家庭吧？
//japanese.BeveledLabel=だってバンドって、第２の家族って感じしない？

// 20240810_RainCandyTech_BTR-GotohHitori_ISEBeveledLabel
//BeveledLabel=It's the kind of miracle most people never experience!
//chinesesimp.BeveledLabel=这样的奇迹，恐怕这辈子再也不会发生了
//chinesetrad.BeveledLabel=這樣的奇蹟，恐怕這輩子再也不會發生了
//japanese.BeveledLabel=こんな奇跡、多分一生起こらない

[Code]
var // 全局变量
  languageName: string;
  Version: TWindowsVersion;

function InitializeSetup: Boolean;
var  // 安装程序加载
  BGMusicFile: string;
  BGMusicType: string;
  //val: Integer;
  RCTech_WinInstType: String;
  RCTech_DebugVersion: boolean;
  RCTech_NeedStoreApp: boolean;
  RCTech_DoNotPlayBGM: boolean;
begin
  Log('[RainCandy Technology Inno Setup Experience] Info: Initializing Setup...');
  //Log('[RainCandy Technology Inno Setup Experience] Info: Placeholder Message');
  //ExtractTemporaryFile('Background.bmp');
  //ExtractTemporaryFile('AdvSplash.dll');
  //ExtractTemporaryFile('{#MyAppSetupStyle}');
  Result := True;
  languageName := ActiveLanguage();
  GetWindowsVersionEx(Version);
  RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'InstallationType', RCTech_WinInstType);
  RCTech_DebugVersion := {#MyAppIsDebugVersion}
  RCTech_NeedStoreApp := {#MyAppIsNeedStoreApp}

  if (not RegValueExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Rime\Weasel', 'WeaselRoot')) then 
  begin  // 检测注册表是否存在程序路径信息，如果不存在报错退出
    Log('[RainCandy Technology Inno Setup Experience] Error: Weasel Schema is not found in this computer...');
    if (languageName = 'chinesesimp') then begin
    	SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgPatchAppNotExistNotice'), ['{#MyAppMainNameCS} ({#MyAppArchitecture}) ']) + #13 + CustomMessage('RCTMsgPatchAppNotExistChk')  + #13#13 + CustomMessage('RCTMsgSetupExit'),mbCriticalError, MB_OK, MB_OK);
    end;
    if (languageName = 'chinesetrad') then begin
    	SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgPatchAppNotExistNotice'), ['{#MyAppMainNameCT} ({#MyAppArchitecture}) ']) + #13 + CustomMessage('RCTMsgPatchAppNotExistChk')  + #13#13 + CustomMessage('RCTMsgSetupExit'),mbCriticalError, MB_OK, MB_OK);
    end;
    if (languageName <> 'chinesesimp') and (languageName <> 'chinesetrad') then begin
    	SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgPatchAppNotExistNotice'), ['{#MyAppMainName} ({#MyAppArchitecture})']) + #13 + CustomMessage('RCTMsgPatchAppNotExistChk')  + #13#13 + CustomMessage('RCTMsgSetupExit'),mbCriticalError, MB_OK, MB_OK);
    end;
    Result := False;
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
  //if BASSMOD_MusicLoad(false, PAnsiChar(BGMusicFile), 0, 0, 4) and (not RCTech_DoNotPlayBGM = true))) then begin
    //Log('[RainCandy Technology Inno Setup Experience] Info: Plugin BASSMOD prepare complete, start music playing...');
    //BASSMOD_MusicPlay;
  //end;

  // BGM 准备（ufMOD）
  if not (RCTech_DoNotPlayBGM = true) then begin
    Log('[RainCandy Technology Inno Setup Experience] Info: Plugin ufMOD prepare complete, start music playing...');
    PlaySongFile(ExpandConstant('{tmp}\music.xm'));
  end;

  // Splash 开屏图片展示
  //if (RCTIsSilent = false) then
  //begin
    //val:=callplug(0,ExpandConstant('{tmp}\AdvSplash.dll'),'show','2400','1400','400','-1',ExpandConstant('{tmp}\Splash'),'','','','','');
  //end;

  Log('[RainCandy Technology Inno Setup Experience] Info: Prepare Complete...');
end;

procedure InitializeWizard();
//var
  //BackgroundImage: TBitmapImage;
begin  // 安装向导加载
  Log('[RainCandy Technology Inno Setup Experience] Info: Initializing Wizard...');
  //BackgroundImage := TBitmapImage.Create(MainForm);
  //BackgroundImage.Parent := MainForm;
  //BackgroundImage.SetBounds(0, 0, MainForm.ClientWidth, MainForm.ClientHeight);
  //BackgroundImage.Stretch := True;
  //BackgroundImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Background.bmp'));
  //Log('[RainCandy Technology Inno Setup Experience] Background Load Complete...');
end;

procedure DeinitializeSetup();
begin   // 安装程序退出
  Log('[RainCandy Technology Inno Setup Experience] Info: Deinitializing Setup...');
  //Log('[RainCandy Technology Inno Setup Experience] Info: Start to cleaning temp files...');
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin  // 跳过不必要页面
  result := false;
  //if (PageID = wpLicense) then result := true;
  //if (PageID = wpReady) then result := true;
  //if (PageID = wpInfoBefore) then result := true;
  //if (PageID = wpInfoAfter) then result := true;
  //if (PageID = wpFinished) then result := true;
  //if (PageID = wpReady) or (PageID = wpInfoAfter) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) or (PageID = wpFinished) then result := true;
end;

function GetDefaultDirName(Param: String): String;
var
    RimeUserDir: String;
begin
    Result := ExpandConstant('{userappdata}\Rime');
    if RegQueryStringValue(HKCU, 'Software\Rime\Weasel', 'RimeUserDir', RimeUserDir) then
        if RimeUserDir <> '' then
            Result := RimeUserDir;
end;

function GetWeaselDirName(Param: String): String;
var
    WeaselRoot: String;
begin
    Result := ''
    if RegQueryStringValue(HKLM32, 'Software\Rime\Weasel', 'WeaselRoot', WeaselRoot) then
        if WeaselRoot <> '' then
            Result := WeaselRoot;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
    WeaselRoot: String;
    AppDir: String;
    ErrorCode: Integer;
begin
    WeaselRoot := GetWeaselDirName('');
    if WeaselRoot <> '' then
    begin
        AppDir := ExpandConstant('{app}');
        if DirExists(AppDir) then
            if ShellExec('', WeaselRoot + '\WeaselServer.exe', '/q', '', SW_SHOW, ewWaitUntilTerminated, ErrorCode) then
                if SuppressibleMsgBox(CustomMessage('RCTMsgNewInstDelConfNotice'), mbConfirmation, MB_YESNO, IDNO) = IDYES then
                    if DelTree(AppDir + '\*', False, True, True) then
                        Result := ''
                    else
                        Result := CustomMessage('RCTMsgDelUserConfFailed')
                else
                    Result := ''
            else
                Result := '退出小狼毫算法服务失败。'
        else
            Result := '未找到用户目录，请检查是否正确安装小狼毫输入法。'
    end
    else
        Result := '未找到程序目录，请检查是否正确安装小狼毫输入法。';
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
Source: "..\Plugins\1BGM\music_weaselschema.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression; 

; 通用配置
Source: "{#RCInnoExpProjectDir}\Schemas\Common\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Common
Source: "{#RCInnoExpProjectDir}\Customs\Common\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Common

; 拼音方案配置
Source: "{#RCInnoExpProjectDir}\Schemas\RimeIce\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce
Source: "{#RCInnoExpProjectDir}\Customs\RimeIce\*"; DestDir: "{app}"; Excludes: "rime.lua"; Flags: ignoreversion recursesubdirs; Components: RimeIce
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceFullPinyin\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\FullPinyin
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceDoublePinyinNC\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\DoublePinyinNC
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceDoublePinyinABC\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\DoublePinyinABC
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceDoublePinyinFLY\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\DoublePinyinFLY
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceDoublePinyinMS\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\DoublePinyinMS
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceDoublePinyinSG\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\DoublePinyinSG
Source: "{#RCInnoExpProjectDir}\Customs\RimeIceDoublePinyinZG\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeIce\DoublePinyinZG

; 五笔方案配置
Source: "{#RCInnoExpProjectDir}\Schemas\RimeWubi\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeWubi
Source: "{#RCInnoExpProjectDir}\Customs\RimeWubi\*"; DestDir: "{app}"; Excludes: "rime.lua"; Flags: ignoreversion recursesubdirs; Components: RimeWubi
Source: "{#RCInnoExpProjectDir}\Schemas\RimeWubiTables86\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeWubi\86
Source: "{#RCInnoExpProjectDir}\Schemas\RimeWubiTables98\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeWubi\98
Source: "{#RCInnoExpProjectDir}\Schemas\RimeWubiTables06\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: RimeWubi\06
Source: "{#RCInnoExpProjectDir}\Fonts\黑体字根.ttf"; DestDir: "{commonfonts}"; FontInstall: "黑体字根"; Flags: onlyifdoesntexist uninsneveruninstall; Components: RimeWubi

; RimeLua文件
Source: "{#RCInnoExpProjectDir}\Customs\RimeWubi\rime.lua"; DestDir: "{tmp}"; DestName: "rime_wubi.lua"; Flags: ignoreversion; Components: RimeWubi
Source: "{#RCInnoExpProjectDir}\Customs\RimeIce\rime.lua"; DestDir: "{tmp}"; DestName: "rime_ice.lua"; Flags: ignoreversion; Components: RimeIce

[Run]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”
; 混合 RimeLua 文件
Filename: "{cmd}"; Parameters: "/c copy /y /b ""{tmp}\rime_wubi.lua""+""{tmp}\rime_ice.lua"" ""{app}\rime.lua"""; Flags: runhidden; Components: RimeWubi;
Filename: "{cmd}"; Parameters: "/c copy /y /b ""{tmp}\rime_ice.lua""+""{tmp}\rime_wubi.lua"" ""{app}\rime.lua"""; Flags: runhidden; Components: RimeIce;

; 部署
Filename: "{code:GetWeaselDirName}\WeaselServer.exe"; Flags: runhidden nowait;
Filename: "{code:GetWeaselDirName}\WeaselDeployer.exe"; Description: "启动部署程序"; Parameters: "/install"; Flags: postinstall nowait skipifsilent;

[Types]
// 安装类型
Name: "full"; Description: "{cm:RCTISEFullInstType}";
Name: "custom"; Description: "{cm:RCTISECustomInstType}"; Flags: iscustom;

[Components]
// 安装程序参数

; 通用配置
Name: "Common"; Description: "通用配置"; Types: full custom; Flags: fixed;

; 拼音方案配置
Name: "RimeIce"; Description: "雾凇拼音"; Types: full;
Name: "RimeIce\FullPinyin"; Description: "全拼方案"; Flags: exclusive;
Name: "RimeIce\DoublePinyinNC"; Description: "双拼方案-自然码"; Flags: exclusive;
Name: "RimeIce\DoublePinyinABC"; Description: "双拼方案-智能ABC"; Flags: exclusive;
Name: "RimeIce\DoublePinyinFLY"; Description: "双拼方案-小鹤"; Flags: exclusive;
Name: "RimeIce\DoublePinyinMS"; Description: "双拼方案-微软"; Flags: exclusive;
Name: "RimeIce\DoublePinyinSG"; Description: "双拼方案-搜狗"; Flags: exclusive;
Name: "RimeIce\DoublePinyinZG"; Description: "双拼方案-紫光"; Flags: exclusive;

; 五笔方案配置
Name: "RimeWubi"; Description: "空山五笔"; Types: full;
Name: "RimeWubi\86"; Description: "86方案"; Flags: exclusive;
Name: "RimeWubi\98"; Description: "98方案"; Flags: exclusive;
Name: "RimeWubi\06"; Description: "新世纪方案"; Flags: exclusive;

[Tasks]
// 安装程序可选任务

[Icons]
// 快捷方式创建相关
