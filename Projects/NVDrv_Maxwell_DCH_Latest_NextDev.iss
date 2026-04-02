; NVIDIA 图形驱动程序 - 适用于 Windose 安装体验的 Inno Setup 脚本
; Made with love by RainCandy Technology - 雨糖科技 以爱敬献
; 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

#define MyAppName "NVIDIA Graphics Driver"
#define MyAppNameCS " NVIDIA 图形驱动程序"
//#define MyAppMainName "NVIDIA Graphics Driver"
#define MyAppMainNameCS " NVIDIA 图形驱动"
#define MyAppMainNameCT " NVIDIA 圖形驅動"
#define MyAppVersion "582.41"
#define MyAppMajorVersion "32.0"
#define MyAppMarketVersion "15.8241"
#define MyAppPublisher "RainCandy Technology"
//#define MyAppPublisher "NVIDIA Corporation"
#define MyAppURL "http://raincandy.tech/"
//#define MyAppURL "https://www.nvidia.com/"
#define WizardImage "WizModernImage-260319"
#define WizardImageConfig SourcePath + "\..\Artworks\" + WizardImage + ".ini"
#define WizardImageAuthor str (ReadIni(WizardImageConfig, "WindoseInstaller", "ArtworkInfo", ""))
#define MyAppExtraInfo WizardImageAuthor
#define MyAppExeName "{#MyAppExeName}"
#define MyAppOutputName "NVIDIADriver_RCTSE"
#define MyAppTypeVersion "0"
#define MyAppRevisionVer "2"
#define MyAppRevisionDate "260401"
#define MyAppSetupBGM "true"
#define RCBGMAllowNotPlay "true"
#define MyAppSetupBGMType "xm"
//#define MyAppSetupStyle "Office2007.cjstyles"
#define MyAppArchitecture "x64"
#define MyAppArchRC "AMD64"
#define MyAppArchRCShort "64"
#define MyAppIsDebugVersion "false"   ;正式外发版本一定要关闭！！！
#define MyAppPublishType ""
//#define MyAppPublishType "_stage"
//#define MyAppPublishType "_ReBuild"
#define MyAppShowFreePrevideMsg "true"
#define MyAppIsNeedStoreApp "true"
#define RCExtraStoreApp "NVIDIA Control Panel"
#define RCExtraStoreAppCS " NVIDIA 控制面板"
#define RCStoreAppNeedNTMajorVer "10"
#define RCStoreAppNeedNTMinorVer "0"
//#define RCWinDriverType "_Win7Win8"
//#define RCWinDriverType "_Win10Win11"
#define RCWinDriverType "_Win10Win11_DCH"
//#define NVDrvPublishType "GameReady"
//#define NVDrvPublishType "Studio"
//#define NVDrvPublishType "Quardo"
//#define NVDrvPublishType "GRID"
//#define NVDrvPublishType "GRID_CUDA"
//#define NVDrvPublishType "GRID_CloudGaming"
//#define NVDrvPublishType "Beta"
//#define NVDrvLastSupportGPU "Turing+"
#define NVDrvLastSupportGPU "Maxwell+"
//#define NVDrvLastSupportGPU "Kepler+"
#define NVDrvPatchType "CMPUnlock"
//#define NVDrvPatchType "CertResign"
#define RCInnoExpBGMPlugin "ufMOD"
#define RCInnoExpPluginSignMark "_signed"
#define RCInnoExpProjectDir "E:\Development\NVIDIA"

#include "..\Include\1RainCandyTech_InnoExp.iss"
#include "..\Include\1RCTInnoExp_LangCS.iss"
#include "..\Include\1RCTInnoExp_LangCT.iss"
#include "..\Include\1RCTInnoExp_LangJP.iss"
#include "..\Include\1RCTInnoExp_LangRU.iss"
//#include "..\Include\1RCTInnoExp_LangCS_IS5.iss"
#include "..\Include\" + RCInnoExpBGMPlugin + ".iss"
//#include "..\Include\Splash.iss"
//#include "..\Include\ISSkin.iss"
//#include "..\Include\ISTask.iss"
#include "..\Include\MicrosoftStore_SvcChk.iss"
#include "..\Include\1RCTInnoExp_WinDrv.iss"
#include "..\Include\1RCTInnoExp_GPU-Z.iss"
#include "..\Include\NVIDIAGraphicsDrv_UMRSE.iss"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{A036FBAD-B5DB-4F41-94CD-670D9737E072}
AppVersion=v{#MyAppVersion}.{#MyAppTypeVersion}.{#MyAppRevisionVer}{#MyAppPublishType}{#RCWinDriverType}_{#MyAppRevisionDate}
//AppVersion=v{#MyAppVersion}.{#MyAppTypeVersion}.{#MyAppRevisionVer}{#MyAppPublishType}{#RCWinDriverType}_{#NVDrvPatchType}_{#MyAppRevisionDate}
AppName={#MyAppName}
//AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright="Made with love by RainCandy Technology"
//AppCopyright="Copyright (C) 2011-2024 NVIDIA Corporation"
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
//VersionInfoVersion={#MyAppVersion}.{#MyAppTypeVersion}.{#MyAppRevisionVer}
VersionInfoVersion={#MyAppMajorVersion}.{#MyAppMarketVersion}
CreateAppDir=no
//LicenseFile="..\Documents\license_nvdrv.rtf"
//InfoBeforeFile=
InfoAfterFile="..\Documents\credits_nvcmp.rtf"
OutputDir={#RCInnoExpProjectDir}\Output
OutputBaseFilename={#MyAppOutputName}_{#MyAppVersion}.{#MyAppTypeVersion}.{#MyAppRevisionVer}{#MyAppPublishType}_{#MyAppArchRCShort}bit{#RCWinDriverType}_{#MyAppRevisionDate}
Compression=lzma2
SolidCompression=yes
DefaultDirName={autopf}\NVIDIA Corporation
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
Uninstallable=no
//SetupIconFile="..\Icons\ahoge_nijika.ico"
//SetupIconFile="..\Icons\BAHalo_Azusa.ico"
SetupIconFile="..\Icons\NVIDIA_Installer.ico"
DisableWelcomePage=false
WizardImageFile="..\Artworks\{#WizardImage}.bmp"
//WizardSmallImageFile="..\Artworks\WizardSmallImage0.bmp"
WizardSmallImageFile="..\Artworks\rclogo_inno_modern.bmp"
//SetupLogging=yes
//DiskSpanning=true
//DiskSliceSize=2100000000
//MinVersion=6.1sp1
//MinVersion=10.0.16299
MinVersion=10.0.17134
WizardStyle=modern
//VersionInfoDescription={#MyAppName}
VersionInfoDescription={#MyAppName} RCTech Special Edition
VersionInfoOriginalFileName={#MyAppOutputName}_Installer.exe
//VersionInfoOriginalFileName=Windose.exe
//AlwaysRestart=yes
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
Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl";
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl";
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl";
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl";
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl";
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl";

[Messages]
// 20251116_RainCandyTech_ISEBeveledLabel
//BeveledLabel=Made with love by RainCandy Technology
//chinesesimp.BeveledLabel=雨糖科技 以爱敬献
//chinesetrad.BeveledLabel=雨糖科技 以愛敬獻 | 因為我想看到你夢想成真
//japanese.BeveledLabel=Made with love by RainCandy Technology

// 20260327_SloganAtBegin
ClickNext=Click Next to continue, or Cancel to exit Setup.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
chinesesimp.ClickNext=单击“下一步”继续，或单击“取消”退出安装程序。%n%n雨糖科技 以爱敬献 | 因为我想看到你梦想成真%n%n{#MyAppExtraInfo}
chinesetrad.ClickNext=按 「下一步」 繼續安裝，或按 「取消」 結束安裝程式。%n%n雨糖科技 以愛敬獻 | 因為我想看到你夢想成真%n%n{#MyAppExtraInfo}
dutch.ClickNext=Klik op Volgende om verder te gaan of op Annuleren om Setup af te sluiten.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
french.ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
german.ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
italian.ClickNext=Seleziona "Avanti" per continuare, o "Annulla" per uscire.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
japanese.ClickNext=続行するには「次へ」、セットアップを終了するには「キャンセル」をクリックしてください。%n%nRainCandy Technology が愛を込めて作りました%n%n{#MyAppExtraInfo}
korean.ClickNext=다음을 클릭하여 계속하거나 취소를 클릭하여 설치를 종료합니다.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
polish.ClickNext=Kliknij przycisk Dalej, aby kontynuować, lub Anuluj, aby zakończyć instalację.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
portuguese.ClickNext=Clique em Seguinte para continuar ou em Cancelar para cancelar a instalação.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
russian.ClickNext=Нажмите «Далее», чтобы продолжить, или «Отмена», чтобы выйти из программы установки.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
spanish.ClickNext=Haga clic en Siguiente para continuar o en Cancelar para salir de la instalación.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
turkish.ClickNext=İlerlemek için Sonraki, çıkmak için İptal üzerine tıklayın.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}
ukrainian.ClickNext=Натисніть «Далі», щоб продовжити, або «Скасувати» для виходу з програми встановлення.%n%nMade with love by RainCandy Technology%n%n{#MyAppExtraInfo}

// 20260314_FinishExtraInfo
// 仅在 MyAppExtraInfo 无信息或表明 Splash 作者时使用
ClickFinish=Click Finish to exit Setup.%n%n{#MyAppExtraInfo}
chinesesimp.ClickFinish=点击“完成”退出安装程序。%n%n{#MyAppExtraInfo}
chinesetrad.ClickFinish=按 「完成」 以結束安裝程式。%n%n{#MyAppExtraInfo}
dutch.ClickFinish=Klik op Voltooien om Setup te beëindigen.%n%n{#MyAppExtraInfo}
french.ClickFinish=Veuillez cliquer sur Terminer pour quitter l'assistant d'installation.%n%n{#MyAppExtraInfo}
german.ClickFinish=Klicken Sie auf "Fertigstellen", um das Setup zu beenden.%n%n{#MyAppExtraInfo}
italian.ClickFinish=Seleziona "Fine" per uscire dall'installazione.%n%n{#MyAppExtraInfo}
japanese.ClickFinish=セットアップを終了するには「完了」をクリックしてください。%n%n{#MyAppExtraInfo}
korean.ClickFinish=설치를 종료하려면 마침을 클릭하십시오.%n%n{#MyAppExtraInfo}
polish.ClickFinish=Kliknij przycisk Zakończ, aby zakończyć instalację.%n%n{#MyAppExtraInfo}
portuguese.ClickFinish=Clique em Concluir para finalizar o Assistente de Instalação.%n%n{#MyAppExtraInfo}
russian.ClickFinish=Нажмите «Завершить», чтобы выйти из программы установки.%n%n{#MyAppExtraInfo}
spanish.ClickFinish=Haga clic en Finalizar para salir del programa de instalación.%n%n{#MyAppExtraInfo}
turkish.ClickFinish=Kurulum yardımcısından çıkmak için Bitti üzerine tıklayın.%n%n{#MyAppExtraInfo}
ukrainian.ClickFinish=Натисніть «Готово» для виходу з програми встановлення.%n%n{#MyAppExtraInfo}

// 20260314_FinishRebootExtraInfo
// 仅在 MyAppExtraInfo 无信息或表明 Splash 作者时使用
FinishedRestartLabel=To complete the installation of [name], Setup must restart your computer. Would you like to restart now?%n%n{#MyAppExtraInfo}
chinesesimp.FinishedRestartLabel=为完成{#MyAppNameCS}的安装，安装程序必须重新启动您的电脑。要立即重启吗？%n%n{#MyAppExtraInfo}
chinesetrad.FinishedRestartLabel=要完成 [name] 的安裝，安裝程式必須重新啟動您的電腦。您想要現在重新啟動電腦嗎？%n%n{#MyAppExtraInfo}
dutch.FinishedRestartLabel=Setup moet de computer opnieuw opstarten om de installatie van [name] te voltooien. Wilt u nu opnieuw opstarten?%n%n{#MyAppExtraInfo}
french.FinishedRestartLabel=L'assistant doit redémarrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redémarrer maintenant ?%n%n{#MyAppExtraInfo}
german.FinishedRestartLabel=Um die Installation von [name] abzuschließen, muss das Setup Ihren Computer neu starten. Möchten Sie jetzt neu starten?%n%n{#MyAppExtraInfo}
italian.FinishedRestartLabel=Per completare l'installazione di [name], è necessario riavviare il sistema.%n%nVuoi riavviare adesso?%n%n{#MyAppExtraInfo}
japanese.FinishedRestartLabel=[name] のインストールを完了するためには、コンピューターを再起動する必要があります。すぐに再起動しますか？%n%n{#MyAppExtraInfo}
korean.FinishedRestartLabel=[name] 설치를 완료하려면 컴퓨터를 다시 시작해야 합니다. 지금 다시 시작하시겠습니까?%n%n{#MyAppExtraInfo}
polish.FinishedRestartLabel=Aby zakończyć instalację aplikacji [name], instalator musi ponownie uruchomić komputer. Czy chcesz teraz uruchomić komputer ponownie?%n%n{#MyAppExtraInfo}
portuguese.FinishedRestartLabel=Para completar a instalação do [name], o Assistente de Instalação deverá reiniciar o seu computador. Deseja reiniciar agora?%n%n{#MyAppExtraInfo}
russian.FinishedRestartLabel=Для завершения установки [name] требуется перезагрузить компьютер. Произвести перезагрузку сейчас?%n%n{#MyAppExtraInfo}
spanish.FinishedRestartLabel=Para completar la instalación de [name], su sistema debe reiniciarse. ¿Desea reiniciarlo ahora?%n%n{#MyAppExtraInfo}
turkish.FinishedRestartLabel=[name] kurulumunun tamamlanması için, bilgisayarınız yeniden başlatılmalı. Şimdi yeniden başlatmak ister misiniz?%n%n{#MyAppExtraInfo}
ukrainian.FinishedRestartLabel=Для завершення встановлення [name] необхідно перезавантажити ваш комп’ютер. Перезавантажити комп’ютер зараз?%n%n{#MyAppExtraInfo}

// 20240912_RainCandyTech_NVDrvCMPUnlock_Tasks
SelectTasksLabel2="Signature mode select" allows you to toggle the digital signature of the driver binary files. In case of applications or games don't work properly with the GPU, you can try to reinstall the driver in a different mode (mode 1 by default).%nImportant: You must uninstall the existing NVIDIA drivers before switching the mode.%n%nIf you are using an NVIDIA {#NVDrvLastSupportGPU} GPU for display output, make sure to check the "HD Audio Driver" option to get a better experience when using DP or HDMI port to connect a monitor that supports audio output. If not, you can just ignore it.%n%nIf you don't know what to choose, just click on the "Next" button.
chinesesimp.SelectTasksLabel2=“签名模式选择”允许您切换驱动程序文件附带的数字签名。如果需要调用显卡的程序或游戏无法正常使用，则可以尝试以另一个签名模式重装驱动程序（默认为模式 1），说不定就可以解决问题。%n※ 重要：切换模式前，必须先卸载已经安装的英伟达驱动程序。%n%n如果您正在使用 {#NVDrvLastSupportGPU} 核心的英伟达显卡作为显示输出，请务必勾选“HD 音频驱动”选项，以在使用 DP、HDMI 等接口连接支持音频输出的显示器时获得更好的体验。如果您没有使用另一张英伟达显卡进行显示输出（即非双 N 卡用户）的话则不需要勾选。%n%n如果您不知道如何选择，则请直接点击“下一步”按钮。
chinesetrad.SelectTasksLabel2=「簽章模式選擇」允許您切換驅動程式檔案附帶的數位簽章。如果需要使用顯示卡的程式或遊戲無法正常使用，請嘗試以另一個簽章模式重新安装驅動程式（預設為模式 1 ），說不定就可以解決問題。%n※ 重要：切換模式前，必須先解除安装已經安装的 NVIDIA 驅動程式。%n%n如果您正在使用 {#NVDrvLastSupportGPU} 核心的 NVIDIA 顯示卡作為顯示輸出，請務必勾選「HD 音訊驅動」選項，以便在使用 DP、HDMI 埠連線支援音訊輸出的顯示器時獲得更好的體驗。如果您沒有使用另一張 NVIDIA 顯示卡進行顯示輸出（即非雙 N 卡使用者）的話則不需要勾選。%n%n如果您不知道如何選擇，則請直接點按「下一步」按鈕。
japanese.SelectTasksLabel2=「署名モードの選択」は、ドライバーファイルに含まれるデジタル署名を切り替えることを可能にします。グラフィックカードを呼び出したプログラムまたはゲームが正しく動作しない場合は、ドライバーを別のモード(デフォルトモード 1)で再インストールしてみてください。%n※ 注意: モードを切り替える前に、まず既にインストールされている NVIDIA ドライバーをアンインストールする必要があります。%n%nディスプレイ出力に NVIDIA {#NVDrvLastSupportGPU} GPU を使用している場合は、「HD オーディオドライバー」オプションをチェックしてください。これにより、DP、HDMI などのオーディオ出力をサポートするモニターに接続する際に、より良い体験が得られます。別の NVIDIA のグラフィックスカードを使用してディスプレイ出力を行っていない場合は、このオプションをチェックしなくても問題ありません。%n%nどのように選択すればよいかわからない場合は、直接「次へ」ボタンをクリックしてください。
russian.SelectTasksLabel2=«Выбор режима подписи» позволяет переключать режим подписи двоичных файлов драйвера. Если приложения или игры работают с GPU некорректно, вы можете попробовать переустановить драйвер в другом режиме (по умолчанию используется режим 1).%nВажно: удалите существующие драйверы NVIDIA перед переключением режима.%n%nЕсли вы используете GPU NVIDIA {#NVDrvLastSupportGPU} для вывода изображения, обязательно отметьте опцию «Драйвер HD Audio», чтобы получить лучший опыт при использовании портов DP или HDMI для подключения монитора с поддержкой вывода звука. В противном случае вы можете просто проигнорировать эту опцию.%n%nЕсли вы не знаете, что выбрать, просто нажмите кнопку «Далее».

// 20240912_RainCandyTech_NVDrvCMPUnlock_Tasks_NoHDAudio
//SelectTasksLabel2="Signature mode select" allows you to toggle the digital signature of the driver binary files. In case of applications or games don't work properly with the GPU, you can try to reinstall the driver in a different mode (mode 1 by default).%nImportant: Before switching the mode, you must uninstall the existing NVIDIA drivers from the operating system.%n%nIf you don't know what to choose, just click on the "Next" button.
//chinesesimp.SelectTasksLabel2=“签名模式选择”允许您切换驱动程序文件附带的数字签名。如果需要调用显卡的程序或游戏无法正常使用，则可以尝试以另一个签名模式重装驱动程序（默认为模式 1），说不定就可以解决问题了。%n※ 重要：切换模式前，必须卸载系统中已安装的英伟达驱动程序。%n%n如果您不知道如何选择，则请直接点击“下一步”按钮。
//chinesetrad.SelectTasksLabel2=「簽章模式選擇」允許您切換驅動程式檔案附帶的數位簽章。如果需要使用顯示卡的程式或遊戲無法正常使用，請嘗試以另一個簽章模式重新安装驅動程式（預設為模式 1 ），說不定就可以解決問題了。%n※ 重要：切換模式前，必須解除安装系统中已安装的 NVIDIA 驅動程式。%n%n如果您不知道如何選擇，則請直接點按「下一步」按鈕。
//japanese.SelectTasksLabel2=「署名モードの選択」は、ドライバーファイルに含まれるデジタル署名を切り替えることを可能にします。グラフィックカードを呼び出したプログラムまたはゲームが正しく動作しない場合は、ドライバーを別のモード(デフォルトモード 1)で再インストールしてみてください。%n※ 注意: モードを切り替える前に、システムに既にインストールされている NVIDIA ドライバーをアンインストールする必要があります。%n%nどのように選択すればよいかわからない場合は、直接「次へ」ボタンをクリックしてください。

// 20251114_NVDrv_EasterEgg
WelcomeLabel1=Welcome to the Future Tears Setup Wizard
chinesesimp.WelcomeLabel1=欢迎使用未来眼泪安装向导
chinesetrad.WelcomeLabel1=歡迎使用未來眼淚安裝程式
japanese.WelcomeLabel1=Future Tears セットアップウィザードの開始
russian.WelcomeLabel1=Вас приветствует Мастер установки Слёзы будущего
FinishedHeadingLabel=Completing the Future Tears Setup Wizard
chinesesimp.FinishedHeadingLabel=已完成未来眼泪安装
chinesetrad.FinishedHeadingLabel=已完成未來眼淚安裝
japanese.FinishedHeadingLabel=Future Tears セットアップウィザードの完了
russian.FinishedHeadingLabel=Завершение Мастера установки Слёзы будущего

[CustomMessages]

[Code]
function InitializeSetup: Boolean;
begin  // 安装程序加载
  AiMofSetupInit;
  //Log('[Windose Installer] Info: Placeholder Message');
  Result := True;

  if (NVRequireReboot = true) then
  begin   // 查看是否已经存在 NVIDIA 重启占位符注册表，如存在则提示重启
    Log('[Windose Installer] Error: Reboot registry mark is detected for NVIDIA Driver installation...');
    SuppressibleMsgBox(CustomMessage('RCTMsgRebootRequired')+ #13#13 + CustomMessage('RCTMsgSetupExit'),mbCriticalError, MB_OK, MB_OK);
    Result := False;
    Exit;
  end;

  if (IsDenyUnspecDevice = true) then
  begin   // 当注册表存在设备安装限制相关键值时弹窗提示
    if (SuppressibleMsgBox(CustomMessage('WDrvDenyUnspecDeviceInstWarning') + #13#13 + CustomMessage('RCTMsgAskContinue'),mbError, MB_YESNO, MB_YESNO) = IDNO) then
    begin
      Result := False;
      Exit;
    end;
  end;
  
  if Version.NTPlatform and (Version.Major >= {#RCStoreAppNeedNTMajorVer}) and (Version.Minor >= {#RCStoreAppNeedNTMinorVer}) and (NeedStoreApp = true) and ((SvcDisableChk_AppxSvc) or (SvcDisableChk_ClipSVC) or (SvcDisableChk_LicenseManager) or (SvcDisableChk_InstallService) or (SvcDisableChk_mpssvc)) then
  begin  // 检测系统中 Microsoft Store 部署服务是否存在禁用现象，如存在则弹窗提示
    Log('[Windose Installer] Warning: One or more necessarily Windows services has been disabled...');
    if (languageName = 'chinesesimp') then begin
      SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgWinStoreSvcChkFailed'), ['{#RCExtraStoreAppCS}']) + #13#13{#RCStoreInstSvc}#13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
    end else
    begin
      SuppressibleMsgBox(FmtMessage(CustomMessage('RCTMsgWinStoreSvcChkFailed'), ['{#RCExtraStoreApp}']) + #13#13{#RCStoreInstSvc}#13#13 + CustomMessage('RCTMsgSetupContinue'), mbError, MB_OK, MB_OK);
    end;
  end;

  //if (RegKeyExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\NVIDIA Corporation\Installer2')) or RegKeyExists(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.Driver') then
  if RegKeyExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.Driver') then
  begin   //查看是否已经存在 NVIDIA 相关驱动，如存在则弹窗提示
    Log('[Windose Installer] Info: Existing NVIDIA Drivers Installation detected... (NVDrv_CMP)');
    if (languageName = 'chinesesimp') then begin
      MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainNameCS}']) + #13#13 + CustomMessage('RCTDisplayDrvUninstInstruction') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK);
    end;
    if (languageName = 'chinesetrad') then begin
      MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppMainNameCT}']) + #13#13 + CustomMessage('RCTDisplayDrvUninstInstruction') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK);
    end;
    if (languageName <> 'chinesesimp') and (languageName <> 'chinesetrad') then begin
      MsgBox(FmtMessage(CustomMessage('RCTMsgAppAlreadyInst'), ['{#MyAppName}']) + #13#13 + CustomMessage('RCTDisplayDrvUninstInstruction') + #13#13 + CustomMessage('RCTMsgSetupContinue'), mbInformation, MB_OK);
    end;
  end;

  Log('[Windose Installer] Info: Pre-install check passed...'); 
  AiMofPostChkInIt;

  // 解压、加载 BGM
  BGMusicType := ExpandConstant('{#MyAppSetupBGMType}');
  BGMusicFile := ExpandConstant('{tmp}\music.' + BGMusicType);
  ExtractTemporaryFile('music.' + BGMusicType);
  AiMofBGMLoad_{#RCInnoExpBGMPlugin};

  Log('[Windose Installer] Info: Prepare Complete...');
end;

procedure InitializeWizard();
begin  // 安装向导加载
  Log('[Windose Installer] Info: Initializing Wizard...');
  //AiMofBGPicInit;
  //WizardForm.LICENSEACCEPTEDRADIO.Checked := true;
  CreateModPage;
end;

procedure DeinitializeSetup();
begin   // 安装程序退出
  Log('[Windose Installer] Info: Deinitializing Setup...');
  AiMofBGMUnload_{#RCInnoExpBGMPlugin};
  Log('[Windose Installer] Info: Start to cleaning temp files...');
  CleanTempNV();
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin  // 跳过不必要页面
  result := false;
  if (PageID = wpLicense) then result := true;
  if (PageID = wpReady) then result := true;
  //if (PageID = wpInfoBefore) then result := true;
  //if (PageID = wpInfoAfter) then result := true;
  //if (PageID = wpFinished) then result := true;
  //if (PageID = wpSelectDir) then result := true;
  //if (PageID = wpSelectComponents) then result := true;
  //if (PageID = wpLicense) or (PageID = wpReady) or (PageID = wpFinished) then result := true;
end;

[Files]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

; BGM 文件
//Source: "..\Plugins\1BGM\music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\1BGM\music_nvdrv.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "D:\My Files\KeygenMusic\CORE - Power ISO 3.1kg.xm"; DestName: "music.xm"; DestDir: {tmp}; Flags: dontcopy nocompression;

; Splash 文件
Source: "{#RCInnoExpProjectDir}\yRCTSESplash_v1\splash.png"; DestDir: {tmp}\NVI2; Flags: ignoreversion overwritereadonly;
Source: "{#RCInnoExpProjectDir}\yRCTSESplash_v1\splash_cn.png"; DestName: "splash.png";DestDir: {tmp}\NVI2; Flags: ignoreversion overwritereadonly; Languages: chinesetrad chinesesimp;
Source: "{#RCInnoExpProjectDir}\yRCTSESplash_v1\splash_rtl.png"; DestDir: {tmp}\NVI2; Flags: ignoreversion overwritereadonly;

; NVIDIA Driver EULA
Source: "{#RCInnoExpProjectDir}\EULA_beta.txt"; DestName: "EULA.txt"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly;
//Source: "{#RCInnoExpProjectDir}\EULA_quadro.txt"; DestName: "EULA.txt"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly;
//Source: "{#RCInnoExpProjectDir}\EULA_RCT_en-US.txt"; DestName: "EULA.txt"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Languages: chinesetrad dutch english french german italian japanese korean russian spanish ukrainian;
//Source: "{#RCInnoExpProjectDir}\EULA_RCT_zh-CN.txt"; DestName: "EULA.txt"; DestDir: {tmp}; Flags: ignoreversion overwritereadonly; Languages: chinesesimp;

; 驱动证书
Source: "E:\Development\Windows 桌面端\CertMgr_WinSDK\certmgr_{#MyAppArchRC}.exe"; DestName: "certmgr.exe"; DestDir: {tmp}\RootCATrust; Flags: ignoreversion overwritereadonly;
Source: "{#RCInnoExpProjectDir}\RootCATrust\*.*"; DestDir: {tmp}\RootCATrust; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;

; 驱动本体
Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\1Main\*.*"; DestDir: {tmp}; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;

; 驱动设备配置
Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\DriverConf\*.*"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;

; 驱动签名 1
Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\DriverSign_1\*.*"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: drvsign1;
Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\nv_disp_1.cat"; DestName: "nv_disp.cat"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion overwritereadonly; Tasks: drvsign1;
//Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\nvgridsw_1.cat"; DestName: "nvgridsw.cat"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion overwritereadonly; Tasks: drvsign1;

; 驱动签名 2
Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\DriverSign_2\*.*"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: drvsign2;
Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\nv_disp_2.cat"; DestName: "nv_disp.cat"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion overwritereadonly; Tasks: drvsign2;
//Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\nvgridsw_2.cat"; DestName: "nvgridsw.cat"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion overwritereadonly; Tasks: drvsign2;

; 驱动签名 3
//Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\DriverSign_3\*.*"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: drvsign3;
//Source: "{#RCInnoExpProjectDir}\{#NVDrvPatchType}\修改版驱动_{#MyAppVersion}\nv_disp_3.cat"; DestName: "nv_disp.cat"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion overwritereadonly; Tasks: drvsign3;

; HD 音频驱动
Source: "{#RCInnoExpProjectDir}\HDAudio\Latest_{#NVDrvLastSupportGPU}\*.*"; DestDir: {tmp}\HDAudio; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: hdaudio;
//Source: "{#RCInnoExpProjectDir}\HDAudio\Latest_{#NVDrvLastSupportGPU}\*.*"; DestDir: {tmp}\HDAudio; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;
//Source: "{#RCInnoExpProjectDir}\HDAudio\Latest_W7W8\*.*"; DestDir: {tmp}\HDAudio; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: hdaudio;
//Source: "{#RCInnoExpProjectDir}\HDAudio\{#MyAppVersion}\*.*"; DestDir: {tmp}\HDAudio; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: hdaudio;
//Source: "{#RCInnoExpProjectDir}\HDAudio\553.35\*.*"; DestDir: {tmp}\HDAudio; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: hdaudio;

; 虚拟音频设备驱动 (Wave Extensible) 
Source: "{#RCInnoExpProjectDir}\yNvVAD\Latest_{#NVDrvLastSupportGPU}\*.*"; DestDir: {tmp}\NvVAD; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: hdaudio;
//Source: "{#RCInnoExpProjectDir}\yNvVAD\Latest_Maxwell+\*.*"; DestDir: {tmp}\NvVAD; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: hdaudio;
//Source: "{#RCInnoExpProjectDir}\yNvVAD\{#MyAppVersion}\*.*"; DestDir: {tmp}\NvVAD; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;
//Source: "{#RCInnoExpProjectDir}\yNvVAD\516.59\*.*"; DestDir: {tmp}\NvVAD; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;

; USB-C 驱动
Source: "{#RCInnoExpProjectDir}\yUSBC\Latest_{#NVDrvLastSupportGPU}\*.*"; DestDir: {tmp}\PPC; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: usbc;
//Source: "{#RCInnoExpProjectDir}\yUSBC\Latest_Maxwell+\*.*"; DestDir: {tmp}\PPC; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: usbc;
//Source: "{#RCInnoExpProjectDir}\yUSBC\{#MyAppVersion}\*.*"; DestDir: {tmp}\PPC; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: usbc;
//Source: "{#RCInnoExpProjectDir}\yUSBC\516.61\*.*"; DestDir: {tmp}\PPC; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly; Tasks: usbc;

; PhysX 组件
Source: "{#RCInnoExpProjectDir}\PhysX\Latest_{#NVDrvLastSupportGPU}\*.*"; DestDir: {tmp}\PhysX; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;
//Source: "{#RCInnoExpProjectDir}\PhysX\Latest_Maxwell+\*.*"; DestDir: {tmp}\PhysX; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;

; GRID vGPU 驱动额外组件
Source: "{#RCInnoExpProjectDir}\yGRIDExtra\Latest_{#NVDrvLastSupportGPU}\*.*"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;
//Source: "{#RCInnoExpProjectDir}\yGRIDExtra\Latest_Maxwell+\*.*"; DestDir: {tmp}\Display.Driver; Flags: ignoreversion recursesubdirs createallsubdirs overwritereadonly;

[Run]
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

// 安装根证书
Filename: "{tmp}\RootCATrust\certmgr.exe"; StatusMsg: "{cm:RCTISERunInstCert}"; Parameters: "/add /all ./RCDrv_Root.cer /r localMachine /s root";
Filename: "{tmp}\RootCATrust\certmgr.exe"; StatusMsg: "{cm:RCTISERunInstCert}"; Parameters: "/add /all ./MNet_Root.cer /r localMachine /s root";
//Filename: "{tmp}\RootCATrust\certmgr.exe"; StatusMsg: "{cm:RCTISERunInstCert}"; Parameters: "/add /all ./KLuo_Root.cer /r localMachine /s root";

// 运行英伟达驱动安装程序
Filename: "{tmp}\setup.exe"; StatusMsg: "{cm:RCTISERunAppSetupForUser}"; Parameters: "/noreboot /noeula"; AfterInstall: ExitIfNVNeedReboot;

[Types]
// 安装类型
Name: "default"; Description: "{cm:RCTISEDefaultInstType}"; Flags: iscustom;

[Components]
// 安装程序参数
//Name: "main"; Description: "{cm:RCTISEMainApp}"; Types: default; Flags: fixed;
//Name: "main\hdaudio"; Description: "HD Audio Driver (Choose if you are using a NVIDIA {#NVDrvLastSupportGPU} Graphics Card for video output) - HD 音频驱动（如果您使用 {#NVDrvLastSupportGPU} 核心的英伟达显卡作为显示输出的话请选择此项）"; Flags: dontinheritcheck;

[Tasks]
// 安装程序可选任务
Name: "drvsign1"; Description: "{cm:WinDrvSignModeOption,1}"; GroupDescription: "{cm:WinDrvSignModeSelect}"; Flags: exclusive; 
//Name: "drvsign1/nvenc"; Description: "NVENC Support (ONLY SELECT WHEN YOUR GPU SUPPORTS IT)"; GroupDescription: "{cm:WinDrvSignModeSelect}"; Flags: unchecked; 
Name: "drvsign2"; Description: "{cm:WinDrvSignModeOption,2}"; GroupDescription: "{cm:WinDrvSignModeSelect}"; Flags: exclusive unchecked; 
//Name: "drvsign3"; Description: "{cm:WinDrvSignModeOption,3} ({cm:RCTISEFeatureIsDebug})"; GroupDescription: "{cm:WinDrvSignModeSelect}"; Flags: exclusive unchecked; 
Name: "hdaudio"; Description: "{cm:WinDrvHDAudio}"; GroupDescription: "{cm:RCTISEExtraComponents}"; Flags: unchecked; 
//Name: "hdaudio"; Description: "{cm:WinDrvHDAudio}"; GroupDescription: "{cm:RCTISEExtraComponents}";
Name: "usbc"; Description: "{cm:WinDrvUSBC}"; GroupDescription: "{cm:RCTISEExtraComponents}"; Flags: unchecked; 

[Icons]
// 快捷方式创建相关
