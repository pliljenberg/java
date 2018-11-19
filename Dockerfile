FROM openjdk:11-jre-slim-sid

WORKDIR /opt
RUN ln -s $JAVA_HOME/lib $JAVA_HOME/conf

ENV JMX_REMOTE "-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.rmi.port=1099 -Djava.rmi.server.hostname=127.0.0.1"
ENV JVM_REFLECTION="--add-opens java.base/java.lang=ALL-UNNAMED"
ENV JAVA11_TLS_WORKAROUND="-Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2"
ENV JAVA_OPTS "${JVM_REFLECTION} ${JMX_REMOTE} ${JAVA_OPTS} -Xms128m -XX:MaxRAMPercentage=90  ${JAVA11_TLS_WORKAROUND}"

CMD []
