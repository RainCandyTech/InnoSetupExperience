// 雨糖科技 Windose Installer 安装体验脚本 - 安装程序背景函数
// Made with love by RainCandy Technology - 雨糖科技 以爱敬献
// 请转到雨科 GitHub 组织账户下 InnoSetupExperience Repo 中的 Contributors.md 文件查看贡献者信息。

// 本脚本代码用于为 Windose Installer 安装体验添加背景图片。
// 请注意，最新版 Inno Setup 已经移除相关支持

[Setup]
WindowVisible=yes

[Code]
var // 全局变量
  val: Integer;
  BackgroundImage: TBitmapImage;

// 初始化背景图像
procedure AiMofBGPicInit;
begin
  ExtractTemporaryFile('Background.bmp');
  BackgroundImage := TBitmapImage.Create(MainForm);
  BackgroundImage.Parent := MainForm;
  BackgroundImage.SetBounds(0, 0, MainForm.ClientWidth, MainForm.ClientHeight);
  BackgroundImage.Stretch := True;
  BackgroundImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Background.bmp'));
  Log('[Windose Installer] Background Load Complete...');
end;

[Files]
; 全屏安装背景图 20230923 Updated （一般不启用）
; 区别：“Win”结尾为 Windows 上古版本中提取版本，“NGO”结尾为《主播女孩重度依赖》中提取版本
//Source: "..\Plugins\Background_Win.bmp"; DestDir: {tmp}; DestName: Background.bmp; Flags: dontcopy nocompression;    
Source: "..\Plugins\Background_NGO.bmp"; DestDir: {tmp}; DestName: Background.bmp; Flags: dontcopy nocompression;    
