# Apache Spark

An [Apache Spark](http://spark.apache.org/) container image. The image is meant to be used for creating an standalone cluster with multiple workers.

## Run

This image does not provide any script to start Spark, you can use Spark's bins, an example is provided in the docker-composer file. 

## Creating a Cluster with Docker Compose

The easiest way to create a standalone cluster with this image is by using [Docker Compose](https://docs.docker.com/compose).

[Docker composer example](https://github.com/ruloweb/spark/blob/master/docker-compose.yml)

## Access through spark-shell

If you are using the docker composer file above, you can access the spark master with the command:

```sh
spark-shell --master spark://localhost:7077 --conf spark.driver.host=172.17.0.1
```

Keep in mind that you need to set the `spark.driver.host` to a address reachable from the Spark Workers

### Scaling

If you wish to increase the number of workers or data nodes use the `scale` command like follows:

```sh
docker-compose scale spark_worker=2
docker-compose scale data_node=3
```

