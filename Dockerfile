FROM openjdk:8

WORKDIR /app
ADD . .

RUN ./mvnw clean && ./mvnw test && ./mvnw install

CMD ["java", "-jar", "target/openshift-0.0.1-SNAPSHOT.jar" ]