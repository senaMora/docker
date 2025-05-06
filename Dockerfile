FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/demo_spring-0.0.1-SNAPSHOT.jar app.jar

ENV JAVA_OPTS="-Xms256m -Xmx512m"

CMD exec java $JAVA_OPTS -jar app.jar
