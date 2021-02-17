export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo
jarsigner -verify -verbose -certs /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo/build/outputs/apk/release/zbardemo-release.apk
