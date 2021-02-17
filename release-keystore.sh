export JAVA_HOME=/Program Files/Java/jdk1.8.0_271
cd /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo
keytool -genkey -v -keystore zbardemo-release.keystore -alias zbardemo.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/keytool_input.txt
