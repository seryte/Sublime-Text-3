
@echo off
cd %~dp1
echo Compiling %~nx1......
if exist %~n1.class (
del %~n1.class
)
javac -encoding UTF-8 %~nx1
if exist %~n1.class (
echo ------Output------
java %~n1
)

rem 放到C:\Program Files\Java\jdk1.8.0_151\bin下，且该目录要配置到环境变量path下