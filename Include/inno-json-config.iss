// 雨糖科技 Windose Installer 安装体验脚本 - inno-json-config 插件函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于 inno-json-config 插件的相关函数。
// 原项目地址：https://code.google.com/p/inno-json-config/

[Files]
//Source: "..\Plugins\JSONConfig.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
Source: "..\Plugins\JSONConfig{#RCInnoExpPluginSignMark}.dll"; DestName: "JSONConfig.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
function JSONQueryString(FileName, Section, Key, Default: WideString;
  var Value: WideString; var ValueLength: Integer): Boolean;
  external 'JSONQueryString@files:jsonconfig.dll stdcall';
function JSONQueryBoolean(FileName, Section, Key: WideString; 
  Default: Boolean; var Value: Boolean): Boolean;
  external 'JSONQueryBoolean@files:jsonconfig.dll stdcall';
function JSONQueryInteger(FileName, Section, Key: WideString; 
  Default: Int64; var Value: Int64): Boolean;
  external 'JSONQueryInteger@files:jsonconfig.dll stdcall';
function JSONWriteString(FileName, Section, Key, 
  Value: WideString): Boolean;
  external 'JSONWriteString@files:jsonconfig.dll stdcall';
function JSONWriteBoolean(FileName, Section, Key: WideString;
  Value: Boolean): Boolean;
  external 'JSONWriteBoolean@files:jsonconfig.dll stdcall';
function JSONWriteInteger(FileName, Section, Key: WideString;
  Value: Int64): Boolean;
  external 'JSONWriteInteger@files:jsonconfig.dll stdcall';

function BoolToStr(Value: Boolean): string;
begin
  Result := 'True';
  if not Value then
    Result := 'False';
end;
