// ���ǿƼ� Inno Setup ��װ����ű� - BASSMOD �������
// Made with love by RainCandy Technology
// �ر��л��֯������

// ���ű��������� BASSMOD �������غ�����

[Files]
Source: "E:\Development\Inno Setup\Plugins\BASSMOD.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
function BASSMOD_Init(device: Integer; freq, flags: DWORD): Boolean;
external 'BASSMOD_Init@files:BASSMOD.dll stdcall delayload';

procedure BASSMOD_MusicFree();
external 'BASSMOD_MusicFree@files:BASSMOD.dll stdcall delayload';

function BASSMOD_MusicLoad(mem: BOOL; f: PAnsiChar; offset: DWORD; length: DWORD; flags: DWORD): Boolean;
external 'BASSMOD_MusicLoad@files:BASSMOD.dll stdcall delayload';

function BASSMOD_MusicPlay(): Boolean;
external 'BASSMOD_MusicPlay@files:BASSMOD.dll stdcall delayload';

function BASSMOD_MusicPause(): Boolean;
external 'BASSMOD_MusicPause@files:BASSMOD.dll stdcall delayload';

procedure BASSMOD_Free();
external 'BASSMOD_Free@files:BASSMOD.dll stdcall delayload';
