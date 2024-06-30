// ���ǿƼ� Inno Setup ��װ����ű� - ��Ҫ����
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű�������Ҫ����ʹ�����ǿƼ� Inno Setup ��װ�����װ�� Windows ��������

[CustomMessages]

[Run]

[Code]
procedure ButtonOnClickDevMgmt(Sender: TObject);
var  // �ڰ�װ����İ�ť����󣬴��������豸�������Ĳ���
  ResultCode: integer;
begin
  ShellExec('', ExpandConstant('{sys}\devmgmt.msc'), '', '', SW_SHOW, ewNoWait, ResultCode)
end;

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
