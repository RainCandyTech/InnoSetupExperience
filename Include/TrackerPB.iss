// 雨糖科技 Windose Installer 安装体验脚本 - 适用于 Inno Setup 的 Tracker Playback 插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于 TrackerPlayback-Inno 插件的相关函数 由 KLuoNoYa 基于 NixaVulpi 的 Tracker Playback 项目基于二次开发。
// 在此向两位致以由衷的感谢与敬意。

[Files]
//Source: "..\Plugins\TrackerPlayback.dll"; DestName: "TrackerPlayback.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\TrackerPlayback{#PluginSignMark}.dll"; DestName: "TrackerPlayback.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\{#PluginArchMark}\TrackerPlayback{#PluginSignMark}.dll"; DestName: "TrackerPlayback.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
const
  TRACKER_PLAYBACK_STATUS_STOPPED = 0;
  TRACKER_PLAYBACK_STATUS_PLAYING = 1;
  TRACKER_PLAYBACK_STATUS_PAUSED = 2;

  TRACKER_PLAYBACK_INNO_ERROR_NONE = 0;
  TRACKER_PLAYBACK_INNO_ERROR_INVALID_ARGUMENT = 1;
  TRACKER_PLAYBACK_INNO_ERROR_ALREADY_ACTIVE = 2;
  TRACKER_PLAYBACK_INNO_ERROR_OUT_OF_MEMORY = 3;
  TRACKER_PLAYBACK_INNO_ERROR_FILE_OPEN_FAILED = 4;
  TRACKER_PLAYBACK_INNO_ERROR_FILE_TOO_LARGE = 5;
  TRACKER_PLAYBACK_INNO_ERROR_FILE_READ_FAILED = 6;
  TRACKER_PLAYBACK_INNO_ERROR_PLAYBACK_START_FAILED = 7;
  TRACKER_PLAYBACK_INNO_ERROR_INVALID_STATE = 8;
  TRACKER_PLAYBACK_INNO_ERROR_ENGINE_FAILURE = 100;

function TrackerPlayback_Inno_PlayFile(ModulePath: String; LoopForever: Integer): Integer;
  external 'TrackerPlayback_Inno_PlayFile@files:TrackerPlayback.dll stdcall loadwithalteredsearchpath';
  
function TrackerPlayback_Inno_Stop(): Integer;
  external 'TrackerPlayback_Inno_Stop@files:TrackerPlayback.dll stdcall loadwithalteredsearchpath';
  
function TrackerPlayback_Inno_Pause(): Integer;
  external 'TrackerPlayback_Inno_Pause@files:TrackerPlayback.dll stdcall loadwithalteredsearchpath';
  
function TrackerPlayback_Inno_Resume(): Integer;
  external 'TrackerPlayback_Inno_Resume@files:TrackerPlayback.dll stdcall loadwithalteredsearchpath';
  
function TrackerPlayback_Inno_GetStatus(): Integer;
  external 'TrackerPlayback_Inno_GetStatus@files:TrackerPlayback.dll stdcall loadwithalteredsearchpath';
  
function TrackerPlayback_Inno_GetLastErrorCode(): Integer;
  external 'TrackerPlayback_Inno_GetLastErrorCode@files:TrackerPlayback.dll stdcall loadwithalteredsearchpath';

// 插件加载，开始播放
procedure BGMLoad_TrackerPB();
var
  ModulePath: String;
begin
  ModulePath := ExpandConstant('{tmp}\music.' + BGMusicType);
  if not (DoNotPlayBGM = true)  then
  begin
    Log('[Windose Installer] Info: Plugin Tracker Playback prepare complete, start music playing...');
    if TrackerPlayback_Inno_PlayFile(ModulePath, 1) = 0 then
    begin
      Log(Format('[Windose Installer] Error: Plugin Tracker Playback failed. Error code: %d', [TrackerPlayback_Inno_GetLastErrorCode()]));
    end;
  end;
end;

procedure BGMUnload_TrackerPB();
begin
  if TrackerPlayback_Inno_GetStatus() <> TRACKER_PLAYBACK_STATUS_STOPPED then
  begin
    TrackerPlayback_Inno_Stop();
  end;
end;
