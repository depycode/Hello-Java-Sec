FROM java:8

VOLUME /tmp

ADD javasec.jar app.jar

EXPOSE 8888

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]