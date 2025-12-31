// 雨糖科技 Inno Setup 安装体验脚本 - Multicam Capture 程序安装检查
// Made with love by RainCandy Technology
// 特别感谢：织金旋律

// 本脚本的代码主要用于检测计算机中 Multicam Capture 的已安装版本。

[Code]
function MCCV1AMD64(): Boolean;
begin  // 检查是否安装 Multicam Capture 1.x
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\MultiCamCapture,Main Path}\MultiCamCapture.exe')) then begin
    result:= true;
  end;
end;

function MCCV1LegacyAMD64(): Boolean;
begin  // 检查是否安装 Multicam Capture 1.x Legacy （例如微软商店版本）
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\LiveCapture,Main Path}\MultiCamCapture.exe')) then begin
    result:= true;
  end;
end;

function MCCV2AMD64(): Boolean;
begin  // 检查是否安装 Multicam Capture 2.x
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\MultiCamCapture2.0,Main Path}\MultiCamCapture.exe')) then begin
    result:= true;
  end;
end;

function MCCOEMAMD64(): Boolean;
begin  // 检查是否安装 Multicam Capture OEM （仅备用，例如微软商店华硕专版）
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\MultiCameraCaptureAndEditing,Main Path}\CorelMultiCam.exe')) then begin
    result:= true;
  end;
end;

function MCCRoxioIA32(): Boolean;
begin  // 检查是否安装 Multicam Capture Roxio 32 位
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Roxio\LiveCapture,Main Path}\MultiCamCapture.exe')) then begin
    result:= true;
  end;
end;

function MCCRoxioAMD64(): Boolean;
begin  // 检查是否安装 Multicam Capture Roxio 64 位
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Roxio\LiveCapture,Main Path}\MultiCamCapture.exe')) then begin
    result:= true;
  end;
end;

function MCCXAMD64(): Boolean;
begin  // 检查是否安装 Multicam Capture X
  result:= false;
  if FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Corel\Corel MultiCam Capture,Main Path}\Corel MultiCam Capture X.exe')) then begin
    result:= true;
  end;
end;


