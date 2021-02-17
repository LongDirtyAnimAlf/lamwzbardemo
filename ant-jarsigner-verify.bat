set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_271
path %JAVA_HOME%\bin;%path%
cd C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo
jarsigner -verify -verbose -certs C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo\bin\zbardemo-release.apk
