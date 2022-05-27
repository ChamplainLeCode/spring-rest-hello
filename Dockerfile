FROM maven

WORKDIR /app
ADD . /app

RUN mvn clean && mvn test && mvn install

ENTRYPOINT [ "java", "-jar", "target/openshift-0.0.1-SNAPSHOT.jar" ]