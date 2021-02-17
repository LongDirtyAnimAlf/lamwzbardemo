export PATH=/Users/Alfred/AppData/Local/Android/Sdk/platform-tools:$PATH
export PATH=/Users/Alfred/AppData/Local/Android/Sdk/build-tools/29.0.2:$PATH
export GRADLE_HOME=/fpclazbydeluxe/newembedded/ccr/lamw-gradle/gradle-6.6.1
export PATH=$PATH:$GRADLE_HOME/bin
zipalign -v -p 4 /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/build/outputs/apk/release/zbardemo-armeabi-v7a-release-unsigned.apk /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/build/outputs/apk/release/zbardemo-armeabi-v7a-release-unsigned-aligned.apk
apksigner sign --ks /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/zbardemo-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/build/outputs/apk/release/zbardemo-release.apk /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/build/outputs/apk/release/zbardemo-armeabi-v7a-release-unsigned-aligned.apk
