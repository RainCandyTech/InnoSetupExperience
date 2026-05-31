// 雨糖科技 Windose Installer 安装体验脚本 - Microsoft Store 部署服务检查
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本的代码主要用于检测操作系统中，Microsoft Store 所依赖的服务是否被禁用。
// 当我们需要部署 Microsoft Store 应用时，为了避免相关组件缺失对用户造成困扰，
// 事先提醒这些被禁用的服务可能会造成安装失败就显得尤为重要。

#define RCStoreInstSvc "'AppX Deployment Service (AppXSvc)'#13'Client License Service (ClipSVC)'#13'Microsoft Store Install Service (InstallService)'#13'Windows Defender Firewall (mpssvc)'#13'Windows License Manager Service (LicenseManager)'"

[CustomMessages]

[Code]
function SvcDisableChk_AppXSvc(): Boolean;
var
  ServiceState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SYSTEM\CurrentControlSet\Services\AppXSvc', 'Start', ServiceState)
  if (ServiceState = 4) then
  begin
    Log('[Windose Installer] Warning: Windows service (AppXSvc) is disabled...');
    result := true;
  end;
end;

function SvcDisableChk_ClipSVC(): Boolean;
var
  ServiceState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SYSTEM\CurrentControlSet\Services\ClipSVC', 'Start', ServiceState)
  if (ServiceState = 4) then
  begin
    Log('[Windose Installer] Warning: Windows service (ClipSVC) is disabled...');
    result := true;
  end;
end;

function SvcDisableChk_LicenseManager(): Boolean;
var
  ServiceState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SYSTEM\CurrentControlSet\Services\LicenseManager', 'Start', ServiceState)
  if (ServiceState = 4) then
  begin
    Log('[Windose Installer] Warning: Windows service (LicenseManager) is disabled...');
    result := true;
  end;
end;

function SvcDisableChk_InstallService(): Boolean;
var
  ServiceState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SYSTEM\CurrentControlSet\Services\InstallService', 'Start', ServiceState)
  if (ServiceState = 4) then
  begin
    Log('[Windose Installer] Warning: Windows service (LicenseManager) is disabled...');
    result := true;
  end;
end;

function SvcDisableChk_mpssvc(): Boolean;
var
  ServiceState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SYSTEM\CurrentControlSet\Services\mpssvc', 'Start', ServiceState)
  if (ServiceState = 4) then
  begin
    Log('[Windose Installer] Warning: Windows service (mpssvc) is disabled...');
    result := true;
  end;
end;

procedure MSStoreIssueDetect;
var
  NeedStoreApp: Boolean;
begin
  NeedStoreApp := {#MyAppIsNeedStoreApp};
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
end;
