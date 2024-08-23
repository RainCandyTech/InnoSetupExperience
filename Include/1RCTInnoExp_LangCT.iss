// 雨糖科技 Inno Setup 安装体验脚本 - 额外字符串参数（繁体中文）
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码为雨糖科技 Inno Setup 安装体验的额外字符串提供本地化支持。

[Messages]
// 20240610_RainCandyTech_ISEMain
chinesetrad.AboutSetupNote=使用雨糖科技 Inno Setup 安裝體驗 {#RCInnoExpVer}%n版本進行構建。

// 20231114_RainCandyTech_ChineseSetupName
//chinesetrad.FinishedHeadingLabel=完成 [name] 安裝

[CustomMessages]
// 20240819_RainCandyTech_InnoSetupExp_Strings
// 对于中文而言，组件名称以英文打头的话，应在前面加空格
chinesetrad.RCTISEMainApp=主程式
chinesetrad.RCTISEInstNormal=一般安裝
chinesetrad.RCTISEInstWithoutNet=禁用聯網功能
chinesetrad.RCTISEInstOnlineVer=安裝聯網版本
chinesetrad.RCTISEInstOfflineVer=安裝離線版本
chinesetrad.RCTISEDefaultInstType=預設安裝
chinesetrad.RCTISEFullInstType=完全安裝
chinesetrad.RCTISECustomInstType=自訂安裝
chinesetrad.RCTISEExtraComponents=額外元件
chinesetrad.RCTISEExtraFeature=額外功能
chinesetrad.RCTISEExpFeature=實驗功能
chinesetrad.RCTISEFeatureIsExp=實驗功能
chinesetrad.RCTISEFeatureIsDebug=除錯
chinesetrad.RCTISEToInst=安裝%1
chinesetrad.RCTISEToEnable=啟用%1
chinesetrad.RCTISEToEnablePremium=啟用%1高階功能
chinesetrad.RCTISEToLaunch=啟動「%1」
chinesetrad.RCTISEFileFormatSupport=%1 格式支援
chinesetrad.RCTISELibrarySupport=%1 支持庫
chinesetrad.RCTISEDisableOnlineSvc=禁用聯網服務
chinesetrad.RCTISERunInstPrepare=正在準備安裝程式，請稍候...
chinesetrad.RCTISERunMainAppPrepare=正在準備主程式，請稍候...
chinesetrad.RCTISERunAppSetupForUser=請在彈出的視窗中進行下一步安裝...
chinesetrad.RCTISERunFinishingInst=正在完成安裝，請稍候...
chinesetrad.RCTISERunExtraSetupPrepare=正在準備「%1」，請稍候...
chinesetrad.RCTISERunIconSetup=正在設定圖示，請稍候...
chinesetrad.RCTISERunInstCert=正在安裝證書，請稍候...
chinesetrad.RCTISEEnablePremium=啟用高階功能
chinesetrad.RCTISEInstAsPremium=安裝並啟用高階功能
chinesetrad.RCTISEDisableFeature=禁用此功能
chinesetrad.RCTISEOSArchARM64=ARM64 架構的作業系統
chinesetrad.RCTISEAssocFileExtension=建立 %1 格式檔案關聯

// 20240817_RainCandyTech_InnoSetupExp_Messages
chinesetrad.RCTMsgSetupContinue=安裝程式現在將繼續。
chinesetrad.RCTMsgSetupExit=安裝程式現在將退出。
chinesetrad.RCTMsgAskContinue=您想繼續嗎？
chinesetrad.RCTMsgDebugNotice=此版本的程式僅供雨糖科技和朋友們測試使用。 請就測試過程中發現的任何問題向雨糖科技提供迴響。謝謝！
chinesetrad.RCTMsgRebootRequired=必須重新啟動計算機才能開始安裝過程。請儲存所有工作，重新啟動計算機，然後再次執行安裝程式。
chinesetrad.RCTMsgAppAlreadyInst=看起來您的計算機可能已經安裝了%1。
chinesetrad.RCTMsgAskUserPlayBGM=是否要播放安裝程式自帶的背景音樂？%n%n如果點按“是”，安裝程式將會在安裝過程中播放其背景音樂；%n如果點按“否”則不會播放。
chinesetrad.RCTMsgWarnUserBGMWillPlay=請特別注意，本安裝程式自帶背景音樂，它將在安裝精靈正式開始時播放。%n%n為了避免造成對周圍環境的打擾，您現在應立即調整系統音量或揚聲器音量，或開啟靜音模式，或將揚聲器關閉。
chinesetrad.RCTMsgRestartInstAfterAction=完成操作後，請再次運行安裝程式。
chinesetrad.RCTMsgOSNotMeetRequirement=您的計算機運行的作業系統不符合要求（%1）。
chinesetrad.RCTMsgOSRequirement=此程式需要 %1 系統版本。
chinesetrad.RCTMsgOSMinRequirement=此程式需要 %1 及以上系統版本。
chinesetrad.RCTMsgOSNotSupportNET48=計算機上運行的 Windows 版本不支援 .NET Framework 4.8。您可能會遇到問題，因為應用程式的某些元件需要它。若要解決此問題，請將作業系統升級到 Windows 10 版本 1607 或更高版本。
chinesetrad.RCTMsgAppMayNotFuncOnThisOS=也許該程式可以在這個作業系統上運行，但我們不能保證您不會遇到任何意外問題。
chinesetrad.RCTMsgAppTryContinueInst=安裝程式現在將嘗試繼續安裝，請就安裝過程中發現的任何問題向雨糖科技提供迴響。謝謝！
chinesetrad.RCTMsgMustUninstExistVer=請在安裝前卸載應用程式的現有版本。
chinesetrad.RCTMsgPatchAppNotExistNotice=我們無法在您的計算機上檢測到%1應用程式。
chinesetrad.RCTMsgPatchAppNotExistChk=請確保已正確安裝此應用程式，然後再重新運行安裝程式。
chinesetrad.RCTMsgWinStoreSvcChkFailed=用於部署 Microsoft Store 應用的一個或多個必要服務已被禁用，可能會影響 %1 的安裝。我們強烈建議您先啟用以下這些服務，然後再繼續安裝。
chinesetrad.RCTMsgChkFinishNextNotice=檢查完畢後，請點按「下一步」繼續。
chinesetrad.RCTMsgFollowSteps=請執行以下操作：
chinesetrad.RCTMsgStepNumber=第 %1 步：
chinesetrad.RCTMsgRequireAMD64=此程式要求 x86_64 / AMD64 架構的作業系統。
chinesetrad.RCTMsgFreeProvideNotice=重要提示：本應用程式「按原樣」免費提供。%n如果您付費獲得了本應用程式，且需要任何協助的話，請直接與賣家進行聯繫。
chinesetrad.RCTMsgWebGetUpdateNotice=您可以在雨糖科技網站（http://raincandy.tech/）獲取本應用程式的最新版本或後續更新。
chinesetrad.RCTMsgNewInstDelConfNotice=是否進行全新安裝？這將刪除現有的使用者配置。
chinesetrad.RCTMsgDelUserConfFailed=刪除使用者配置失敗。

// 20240629_RainCandyTech_WinDrv_Strings
chinesetrad.WinDrvSignModeSelect=簽章模式選擇
chinesetrad.WinDrvSignModeOption=簽章模式 %1
chinesetrad.WDrvDeviceManager=裝置管理員
chinesetrad.WDrvDevMgrOpen=啟動「裝置管理員」
chinesetrad.WinDrvHDAudio=HD 音訊驅動
chinesetrad.WDrvPreInstChk=安裝前設備問題檢查
chinesetrad.WDrvPostInstChk=安裝後設備問題檢查
chinesetrad.WDrvInstChkDesc=請根據以下步驟，檢查您計算機上的設備。
chinesetrad.WDrvPreInstChkAskUser=您是否在「裝置管理員」中發現了上面所描述的報錯問題？
chinesetrad.WDrvPreInstChkSameErrFound=我發現了相同的報錯問題。
chinesetrad.WDrvInstChkCodeFoundDesc=了解接下來您需要採取的步驟。%n只有您發現了「代碼 %1」的特定報錯時才應點按此按鈕。
chinesetrad.WDrvPreInstChkSameErrNotFound=我沒有發現問題，或者報錯問題與前面提到的不一樣。
chinesetrad.WDrvPreInstChkSameErrNotFoundDesc=安裝程序將繼續。%n如果您遇到了其他的報錯問題也請點按此按鈕，它們在驅動安裝完畢後也許就解決了。
chinesetrad.WDrvPreInstChkNowNotice=現在，您需要打開「裝置管理員」，檢查「顯示卡」分類中是否存在出現感嘆號圖示的設備。%n如有，請按兩下圖示，查看其中是否存在「代碼 %1」的報錯信息。
chinesetrad.WDrvPostInstChkNowNotice=現在，您需要啟動 GPU-Z 以確認顯示卡能夠正常工作。%n請在 GPU-Z 中選擇您的 NVIDIA 顯示卡，並檢查顯示卡的頻率與顯存信息是否可被正常讀取。%n%n如果應用程式無法獲得正確的信息，則您的顯示卡可能存在問題，例如電源線未插或顯示卡本身已%n損壞。
chinesetrad.WDrvFMConfHasError=看起來您的計算機當前的固件配置（UEFI BIOS 設置）可能存在問題。
chinesetrad.WDrvFMBootModeIs=作業系統當前正在使用的引導模式是：
chinesetrad.WDrvFMBootModeHowTo=請通過 Windows 恢復環境 / 安裝媒體、MBR2GPT 實用程序等工具將作業系統所在硬碟的分區錶轉換為 GPT / GUID 格式。然後請務必進行系統引導修復，以完成向 UEFI 引導模式的轉換。
//chinesetrad.WDrvFMBootModeUEFIIgnore=如果您現在已經在使用 UEFI 引導模式，則忽略本步驟。
chinesetrad.WDrvFMBootModeDisableCSM=請轉到 UEFI BIOS 設置界面，找到並關閉「相容性支援模組」（簡稱 CSM）選項。
chinesetrad.WDrvFMBootModeLegacyDisableWarning=※ 重要：如果沒有執行第一步就關閉該選項的話，將無法啟動作業系統。
chinesetrad.WDrvFMBootModeHowToASUSExtra=對於某些特定的主機板型號，例如某些 ASUS H81、B85 主機板，您還需要在 UEFI BIOS Utility 中對某些選項進行調整，比如「首選顯示卡」和「初始化 iGPU」選項。
chinesetrad.WDrvFMBootModeLegacy=您正在使用傳統 BIOS 啟動模式。 
chinesetrad.WDrvFMBootModeUEFI=您正在使用 UEFI 啟動模式。
chinesetrad.WDrvFMBootModeUnknown=我們無法確定您正在使用的啟動模式。
chinesetrad.RCTDisplayDrvUninstInstruction=如果您遇到了問題，請先嘗試卸載這些現有的設備驅動，然後再次運行安裝程式。您可能需要一些工具，例如「Display Driver Uninstaller」(DDU)。
chinesetrad.WDrvDenyUnspecDeviceInstWarning=作業系統設置了群組原則，禁止特定情況下的設備安裝。此問題可能會導致驅動程式安裝失敗。%n%n如要解決此問題，請在群組原則編輯器中禁用設備的安裝限制，重新啟動計算機，然後重新運行安裝程式。

// 20240526_RainCandyTech_AppSolution_Strings
chinesetrad.RCTASEditNotAvailable=編輯功能不可用
chinesetrad.RCTASPrintNotAvailable=列印功能不可用
