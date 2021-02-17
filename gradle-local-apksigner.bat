set Path=%PATH%;C:\Users\Alfred\AppData\Local\Android\Sdk\platform-tools;C:\Users\Alfred\AppData\Local\Android\Sdk\build-tools\29.0.2
set GRADLE_HOME=C:\fpclazbydeluxe\newembedded\ccr\lamw-gradle\gradle-6.6.1
set PATH=%PATH%;%GRADLE_HOME%\bin
zipalign -v -p 4 C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo\build\outputs\apk\release\zbardemo-armeabi-v7a-release-unsigned.apk C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo\build\outputs\apk\release\zbardemo-armeabi-v7a-release-unsigned-aligned.apk
apksigner sign --ks C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo\zbardemo-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo\build\outputs\apk\release\zbardemo-release.apk C:\fpclazbydeluxe\newembedded\projects\LAMWProjects\zbardemo\build\outputs\apk\release\zbardemo-armeabi-v7a-release-unsigned-aligned.apk
