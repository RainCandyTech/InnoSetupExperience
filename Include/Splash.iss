// ���ǿƼ� Inno Setup ��װ����ű� - Splash ����ͼƬ�������
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű������������ Splash ����ͼƬ�������غ�����

[Files]
Source: "..\Plugins\callnsis.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\callnsis{#RCInnoExpPluginSignMark}.dll"; DestName: "callnsis.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\AdvSplash.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\AdvSplash{#RCInnoExpPluginSignMark}.dll"; DestName: "AdvSplash.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
// �����ʼ������
function callplug(parentwnd: Integer; pluginname,funcname,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10: PAnsiChar): Integer;
external 'callplug@files:callnsis.dll stdcall';

function GetFileName(const AFileName: string): string;
begin  // Splash ����ͼƬ������
  Result := ExpandConstant('{tmp}\' + AFileName);
end;
