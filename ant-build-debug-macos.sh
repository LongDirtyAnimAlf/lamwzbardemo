export PATH=/fpclazbydeluxe/newembedded/ccr/lamw-ant/apache-ant-1.10.9/bin:$PATH
export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /fpclazbydeluxe/newembedded/projects/LAMWProjects/zbardemo
ant -Dtouchtest.enabled=true debug
