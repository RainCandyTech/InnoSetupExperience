// 雨糖科技 Windose Installer 安装体验脚本 - 适用于 Inno Setup 的 Game_Music_Emu 插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本插件由 KLuoNoYa 基于 libgme 的 Game_Music_Emu 项目基于二次开发。
// https://github.com/KLuoNuoYa/game-music-emu

[Files]
//Source: "..\Plugins\gme_inno_ia32.dll"; DestName: "gme_inno.dll"; DestDir: "{tmp}"; Flags: dontcopy nocompression noencryption;
Source: "..\Plugins\gme_inno_ia32{#PluginSignMark}.dll"; DestName: "gme_inno.dll"; DestDir: "{tmp}"; Flags: dontcopy nocompression noencryption;

[Code]
// 加载曲目
function GMEInnoOpenFileW(Path: string; SampleRate: Integer): Integer;
  external 'GMEInnoOpenFileW@files:gme_inno.dll stdcall delayload';
// 按照音轨加载曲目
function GMEInnoOpenFileTrackW(Path: string; SampleRate: Integer; TrackIndex: Integer): Integer;
  external 'GMEInnoOpenFileTrackW@files:gme_inno.dll stdcall delayload';
// 切换音轨
function GMEInnoStartTrack(TrackIndex: Integer): Integer;
  external 'GMEInnoStartTrack@files:gme_inno.dll stdcall delayload';
// 播放
function GMEInnoPlay: Integer;
  external 'GMEInnoPlay@files:gme_inno.dll stdcall delayload';
// 暂停
procedure GMEInnoPause;
  external 'GMEInnoPause@files:gme_inno.dll stdcall delayload';
// 停止
procedure GMEInnoStop;
  external 'GMEInnoStop@files:gme_inno.dll stdcall delayload';
// 关闭
procedure GMEInnoClose;
  external 'GMEInnoClose@files:gme_inno.dll stdcall delayload';
// 启用循环
procedure GMEInnoSetLoop(Enabled: Integer);
  external 'GMEInnoSetLoop@files:gme_inno.dll stdcall delayload';
// 设置音量
procedure GMEInnoSetVolume(VolumePercent: Integer);
  external 'GMEInnoSetVolume@files:gme_inno.dll stdcall delayload';
function GMEInnoGetLastErrorW(var Buffer: string; Capacity: Integer): Integer;
  external 'GMEInnoGetLastErrorW@files:gme_inno.dll stdcall delayload';
function GMEInnoGetLastErrorLength: Integer;
  external 'GMEInnoGetLastErrorLength@files:gme_inno.dll stdcall delayload';
  
function ReadGmeError: string;
var
  Buffer: string;
begin
  SetLength(Buffer, GMEInnoGetLastErrorLength);
  GMEInnoGetLastErrorW(Buffer, Length(Buffer));
  while (Length(Buffer) > 0) and (Buffer[Length(Buffer)] = #0) do
    SetLength(Buffer, Length(Buffer) - 1);
  Result := Buffer;
end;

procedure BGMLoad_GMEInno();
begin
  if not (DoNotPlayBGM = true) then begin
    // 启用循环
    GMEInnoSetLoop(1);
    // 设置音量
    GMEInnoSetVolume(70);
    // 开始播放
    GMEInnoPlay;
  end;
end;

procedure BGMUnload_GMEInno();
begin
  GMEInnoStop;
  GMEInnoClose;
end;
