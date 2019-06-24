FROM luufery/ubuntu-openjdk-8-maven
VOLUME /tmp
ADD ./ ./
RUN mvn package
ENV AC="a"
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /target/demo-190624-0.0.1-SNAPSHOT.jar  --spring.profiles.active=$AC " ]
