// ���ǿƼ� Inno Setup ��װ����ű� - BASSMOD �������
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��������� ufMOD �������غ�����

[Files]
Source: "..\Plugins\ufMOD{#RCInnoExpPluginSignMark}.dll"; DestName: "ufMOD.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
procedure PlaySongFile(FileName: AnsiString);
external 'PlaySongFile@files:ufMOD.dll stdcall setuponly';

procedure StopSong;
external 'StopSong@files:ufMOD.dll stdcall setuponly';
