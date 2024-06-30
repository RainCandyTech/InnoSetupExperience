// ���ǿƼ� Inno Setup ��װ����ű� - �Ӿ�Ч���������
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��������� ISSkin �������غ�����

[Files]
Source: "..\ISSkin\ISSkinExU.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
// Load Skin Api
procedure LoadSkin(lpszPath: String; lpszIniFileName: String);
external 'LoadSkin@files:ISSkinExU.dll stdcall';

// Importing UnloadSkin API from ISSkinExU.dll
procedure UnloadSkin();
external 'UnloadSkin@files:ISSkinExU.dll stdcall';

// Importing ShowWindow Windows API from User32.DLL
function ShowWindow(hWnd: Integer; uType: Integer): Integer;
external 'ShowWindow@user32.dll stdcall';
