// ���ǿƼ� Inno Setup ��װ����ű� - ���������װ��Ҫ����
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű�������Ҫ����ʹ�����ǿƼ� Inno Setup ��װ�����װ�� Windows ��������
// ���������������� YukiIsait (https://github.com/YukiIsait) ��д���������ڴ˱�ʾ��л��

[CustomMessages]

[Run]

[Code]
procedure ButtonOnClickDevMgmt(Sender: TObject);
var  // �ڰ�װ����İ�ť����󣬴��������豸�������Ĳ���
  ResultCode: integer;
begin
  ShellExec('', ExpandConstant('{sys}\devmgmt.msc'), '', '', SW_SHOW, ewNoWait, ResultCode)
end;

// ͨ������ kernel32.dll����ȡϵͳ��ǰ���������� 
// ����ֵ��-1: Failed; 0: Unknown; 1: Legacy BIOS; 2: UEFI; 3: Not implemented
function GetFirmwareType(var FirmwareType: Integer): Boolean;
external 'GetFirmwareType@kernel32.dll stdcall';

function IsDenyUnspecDevice(): Boolean;
var  // ���ע����Ƿ�����豸��װ������ؼ�ֵ
  DeviceUnspecDenyState: Cardinal;
begin
  result:= false;
  RegQueryDWordValue(HKLM, 'SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions', 'DenyUnspecified', DeviceUnspecDenyState)
  if (DeviceUnspecDenyState = 1) then
  begin
    Log('[RainCandy Technology Inno Setup Experience] Warning: The OS has been configured to block installation for all device that is not specified in group policy!');
    result := true;
  end;
end;
