FROM openliberty/open-liberty:full-java11-openj9-ubi

COPY --chown=1001:0 target/learn-jakartaee-1.0.0-SNAPSHOT.war /config/dropins/learn-jakartaee-1.0.0-SNAPSHOT.war
COPY --chown=1001:0 src/main/liberty/config/server-docker.xml /config/server.xml

RUN configure.sh
