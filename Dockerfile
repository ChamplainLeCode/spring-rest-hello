FROM openjdk:8

WORKDIR /app
ADD . /app

RUN /app/.mvnw clean && /app/.mvnw test && /app/.mvnw install

CMD ["java", "-jar", "target/openshift-0.0.1-SNAPSHOT.jar" ]