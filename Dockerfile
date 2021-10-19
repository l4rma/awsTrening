FROM adoptopenjdk/openjdk11:alpine

COPY target/demo-0.0.1-SNAPSHOT.jar . 

CMD java -jar demo-0.0.1-SNAPSHOT.jar
