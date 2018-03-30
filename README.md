#### 一个简单的 v2ray-core windows 多线路切换 bat

脚本内容：
```
@Echo Off
cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
taskkill /f /im wv2ray.exe
start "" /d "C:\App\v2ray\" "wv2ray.exe" -config=us-config.json
echo 重新启动 V2ray 进程成功
```
https://github.com/v2ray/v2ray-core/releases

使用方法：
1.将你的多个配置文件命名为类似 us1-config.json us2-config.json 的文件名
2.下载bat与配置文件共同放入v2ray-core 安装目录
3.修改bat中的 “C:\App\v2ray\” 和 “us-config.json” 为你自己的安装路径和配置文件名称，为每个配置文件单独配一个bat用于切换。
