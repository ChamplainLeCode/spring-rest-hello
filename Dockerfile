FROM  maven:3.8.5-jdk-8
ADD . /code/
RUN /usr/share/maven/bin/mvn clean && /usr/share/maven/bin/mvn install && /usr/share/maven/bin/mvn test && /usr/share/maven/bin/mvn package
CMD java --jar target/openshift-0.0.1-SNAPSHOT.jar