FROM  maven:3.8.5-jdk-8
ADD . /code/
CMD mvn spring-boot:run