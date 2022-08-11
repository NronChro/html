@echo off
:: 获取当前脚本的路径
cd /d %~dp0
:: 自动提交
git init
git add .
git commit -m "update bat"
git push
@ech 已经完成

SET daoTime=60
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo 倒计时退出 %daoTime% s
if %daoTime%==0 （exit）else (goto dao)
