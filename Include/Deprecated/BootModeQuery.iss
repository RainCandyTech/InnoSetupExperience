// ���ǿƼ� Inno Setup ��װ����ű� - ����ϵͳ����ģʽ���
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��Ĵ�����Ҫ���ڼ����������ϵͳ������������������������װ���� Repack ���ṩ�������ʾ��
// �� YukiIsait (https://github.com/YukiIsait) ��д���������ڴ˱�ʾ��л��

[Files]
Source: "..\Plugins\BootModeQuery{#RCInnoExpPluginSignMark}.dll"; DestName: "BootModeQuery.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
//procedure GetBootMethod (var CurrentBootEnv: string);
//var  // ͨ�� PowerShell ��ȡ��ǰϵͳ����������
  //CmdResultOutput, ExecStdout: ansistring; // Unicode �汾�� Inno Setup ����ѱ������Ƹĳ� ansistring
  //ResultCode: integer;
//begin
  //CmdResultOutput := ExpandConstant('{tmp}') + '\bootenvresult.txt';
  //Exec('cmd.exe', '/c powershell.exe $env:Firmware_Type >"' + CmdResultOutput + '"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode); // ������ cmd.exe ����ִ�л�ȡ������� powershell.exe �Ļ����������Ա�������
  //if (LoadStringFromFile(CmdResultOutput, ExecStdout)) and not (ExecStdout = '') then
  //begin
    //CurrentBootEnv := ExecStdout; // �����ȡ�ɹ����Ͱѻ�ȡֵ���� CurrentBootEnv ����
  //end
    //else
  //begin
    //CurrentBootEnv := 'Unknown'; // �����ȡʧ�ܣ����߻�ȡ����ֵ��ʱ�򣬾͸� CurrentBootEnv ������ֵ��Unknown��
  //end;
  //Log('[RainCandy Technology Inno Setup Experience] Info: Get boot method complete... ' + CurrentBootEnv);
//end;

function YukiIsaitGetBoot: Integer;
external 'GetBiosMode@files:BootModeQuery.dll stdcall setuponly';
