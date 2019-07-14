FROM java:8
VOLUME /tmp

COPY target/gs-spring-boot-docker-master-0.0.1-SNAPSHOT.jar /usr/src/gs-spring-boot-docker-master-0.0.1-SNAPSHOT.jar

ADD /usr/src/gs-spring-boot-docker-master-0.0.1-SNAPSHOT.jar /app/app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]