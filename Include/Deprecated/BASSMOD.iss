// 雨糖科技 Windose Installer 安装体验脚本 - BASSMOD 插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于 BASSMOD 插件的相关函数。

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

// 插件加载，开始播放
procedure AiMofBGMLoad_BASSMOD;
begin
  ExtractTemporaryFile('BASSMOD.dll');
  if not BASSMOD_Init(-1,44100,0) then begin
    BASSMOD_Free;
    BASSMOD_MusicFree;
  end;
  if BASSMOD_MusicLoad(false, PAnsiChar(BGMusicFile), 0, 0, 4) and (not RCTech_DoNotPlayBGM = true) then begin
    Log('[Windose Installer] Info: Plugin BASSMOD prepare complete, start music playing...');
    BASSMOD_MusicPlay;
  end;
end;

// 取消加载插件，避免安装程序退出时插件抽风
procedure AiMofBGMUnload_BASSMOD;
begin
  BASSMOD_Free;
end;
