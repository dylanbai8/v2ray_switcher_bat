@Echo Off
cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
taskkill /f /im wv2ray.exe
start "" /d "C:\App\v2ray\" "wv2ray.exe" -config=us-config.json
echo 重新启动 V2ray 进程成功
