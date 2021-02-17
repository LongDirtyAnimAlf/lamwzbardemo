export PATH=/Users/Alfred/AppData/Local/Android/Sdk/platform-tools:$PATH
export GRADLE_HOME=/fpclazbydeluxe/newembedded/ccr/lamw-gradle/gradle-6.6.1
export PATH=$PATH:$GRADLE_HOME/bin
source ~/.bashrc
gradle clean bundle --info
