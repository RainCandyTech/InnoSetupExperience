// 雨糖科技 Inno Setup 安装体验脚本 - 视觉效果插件函数
// Made with love by RainCandy Technology
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于 IsTask 插件的相关函数。
// 安装前判断是否有进程正在运行，istask.dll 文件与打包的 exe 文件一起

[Files]
Source: "..\Plugins\ISTask.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\ISTask{#RCInnoExpPluginSignMark}.dll"; DestName: "ISTask.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
function RunTask(FileName: AnsiString; bFullpath: Boolean): Boolean;
external 'RunTask@files:ISTask.dll stdcall delayload';

function KillTask(ExeFileName: AnsiString): Integer;
external 'KillTask@files:ISTask.dll stdcall delayload';

function RunTasks(Tasks: AnsiString; bFullpath: Boolean; CheckAll: Boolean): Boolean;
var
  sl: TStringList;
  i: Integer;
begin
  Result := False;
  sl := TStringList.Create;
  try
    sl.Text := Tasks;
    if sl.Count > 0 then
      for i := 0 to sl.Count -1 do 
      begin
        if CheckAll then
        begin
          if i = 0 then Result := RunTask(sl[i], bFullpath)
          else
            Result := Result and RunTask(sl[i], bFullpath);
        end
        else
        if RunTask(sl[i], bFullpath) then
        begin
          Result := True;
          Break;
        end;
      end;
  finally
    sl.Free;
  end;
end;

procedure KillTasks(Tasks: AnsiString);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.Text := Tasks;
    if sl.Count > 0 then
      for i := 0 to sl.Count -1 do KillTask(sl[i]);
  finally
    sl.Free;
  end;
end;

[/Code]

