// 雨糖科技 Inno Setup 安装体验脚本 - BASSMOD 插件函数
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于 ufMOD 插件的相关函数。

[Files]
Source: "..\Plugins\ufMOD.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\ufMOD{#RCInnoExpPluginSignMark}.dll"; DestName: "ufMOD.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
procedure PlaySongFile(FileName: AnsiString);
external 'PlaySongFile@files:ufMOD.dll stdcall setuponly';

procedure StopSong;
external 'StopSong@files:ufMOD.dll stdcall setuponly';
