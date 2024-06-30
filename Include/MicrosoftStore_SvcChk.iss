// ���ǿƼ� Inno Setup ��װ����ű� - Microsoft Store ���������
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��Ĵ�����Ҫ���ڼ�����ϵͳ�У�Microsoft Store �������ķ����Ƿ񱻽��á�
// ���ڲ��ֳ��������� DCH ������������������Ϊ Microsoft Store Ӧ�ã�
// ���Ϊ�˱���������ȱʧ���û�������ţ�����������Щ�����õķ�����ܻ�������ȱʧ���Ե���Ϊ��Ҫ��

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
    Log('[RainCandy Technology Inno Setup Experience] Warning: Windows service (AppXSvc) is disabled...');
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
    Log('[RainCandy Technology Inno Setup Experience] Warning: Windows service (ClipSVC) is disabled...');
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
    Log('[RainCandy Technology Inno Setup Experience] Warning: Windows service (LicenseManager) is disabled...');
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
    Log('[RainCandy Technology Inno Setup Experience] Warning: Windows service (LicenseManager) is disabled...');
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
    Log('[RainCandy Technology Inno Setup Experience] Warning: Windows service (mpssvc) is disabled...');
    result := true;
  end;
end;