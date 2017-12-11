FROM openjdk:8-jdk

RUN curl http://apache.dattatec.com/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz | tar xz -C /opt

