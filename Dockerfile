FROM openjdk:8-jdk

ENV SPARK_VERSION=2.3.0
ENV HADOOP_VERSION=2.7

RUN curl http://apache.dattatec.com/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz | tar xz -C /usr/local

ENV PATH="${PATH}:/usr/local/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}/bin"

