// ���ǿƼ� Inno Setup ��װ����ű� - NVIDIA ��ʾ��������װ���
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��Ĵ�����Ҫ���� NVIDIA ��ʾ���������޸İ汾��

[Files]
; ����װǰ�豸��⡹��Ҫʹ�õ�ͼƬ
Source: "E:\Development\NVIDIA\DeviceChkPic\*.bmp"; Flags: dontcopy nocompression;

[CustomMessages]

[Code]
function NVIDIADrv_RequireReboot(): Boolean;
begin  // ����Ƿ��Ѿ����� NVIDIA ����ռλ��ע���     
  result:= false;
  if (RegKeyExists(HKLM{#MyAppArchRCShort}, 'SOFTWARE\NVIDIA_RebootNeeded_{CE1CA72E-7C77-4b69-A5D3-2C4CFCD625FD}')) then begin
    result:= true;
  end;
end;

procedure NijikaExitIfNVNeedReboot();
begin  // ������ְ�װ����Ҫ��������������ܼ�����װ����ֱ���˳���װ�����Ա���Ӣΰ�ﰲװ����ֱ������ϵͳ������װ���黹�ں�̨��ֹ�������������
  if (NVIDIADrv_RequireReboot = true) then begin
    Log('[RainCandy Technology Inno Setup Experience] Info: NVIDIA Installer requires system reboot. Now exiting setup.');
    DeinitializeSetup();
    ExitProcess(0);
  end;
end;
