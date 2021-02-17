export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo
keytool -genkey -v -keystore zbardemo-release.keystore -alias zbardemo.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/keytool_input.txt
