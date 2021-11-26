::启动redis的命令
echo redis start......
::设置启动窗口的标题
title redis-server
::定义一个变量ENV_HOME
set ENV_HOME="D:\redis\Redis-x64-5.0.14"
D:
::设置启动窗口的颜色
color 0a
cd %ENV_HOME%
redis-server.exe redis.windows.conf
exit

