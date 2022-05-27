FROM  maven:3.8.5-jdk-8
ADD . /code/
RUN mvn clean && mvn install && mvn test && mvn package
CMD java --jar target/openshift-0.0.1-SNAPSHOT.jar