// 雨糖科技 Windose Installer 安装体验脚本 - ISTask Reimagined 插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// Reimagined 版本插件由 KLuoNoYa 使用 AI 重新编写，用于对纯 64 位安装包做准备。

[Files]
//Source: "..\Plugins\ISTaskReimagined_amd64.dll"; DestName: "ISTask.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\ISTaskReimagined_amd64{#RCInnoExpPluginSignMark}.dll"; DestName: "ISTask.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
// 检查某个进程是否存在
function RunTask(FileName: AnsiString; bFullpath: Boolean): Boolean;
external 'RunTask@files:ISTask.dll stdcall delayload';

// 结束某个进程
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