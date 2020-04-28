FROM debian
RUN apt-get update -y
RUN apt-get install -y default-jre-headless
RUN apt-get install -y postgresql
RUN /etc/init.d/postgresql start
COPY example-jpa-jpa/dockerJar.jar /usr/local/example-jpa-jpa/dockerJar.jar
WORKDIR /usr/local/example-jpa-jpa
RUN java -jar dockerJar.jar
