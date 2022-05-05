@echo off
echo 1. Python版本：
python --version
pip --version
echo 如果第一行显示的Python版本号低于3.8，或者Pip未找到/运行出错，请使用附带的跳转链接更新Python后重试
echo.
echo 2. 预训练数据：
if exist pretrained\combiner.pt (
echo 已找到pretrained文件夹下的预训练数据
) else (
echo 未找到预训练数据，请使用附带的跳转链接下载预训练数据并解压到pretrained文件夹中并重试
)
echo.
echo 3. UnityCapture：
reg query HKLM\SOFTWARE\Classes /s /f UnityCaptureFilter32bit.dll>"%tmp%\null"
if errorlevel 1 (
echo 未安装UnityCapture，透明通道输出可能不可用
) else (
echo 已安装UnityCapture
)
echo.
echo.
echo 检查上述状态无误后运行下一个批处理文件
pause