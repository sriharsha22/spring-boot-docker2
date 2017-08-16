FROM centos

RUN yum install -y java

VOLUME /tmp
ADD /demo-0.1.0.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]