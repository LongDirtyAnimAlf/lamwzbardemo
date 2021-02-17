set Path=%PATH%;C:\fpclazbydeluxe\newembedded\ccr\lamw-ant\apache-ant-1.10.9\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_271
cd C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo
call ant clean -Dtouchtest.enabled=true debug
if errorlevel 1 pause
