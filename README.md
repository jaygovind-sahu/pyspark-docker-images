# PySpark Docker Images

## Docker tags

| Docker tag                      | Python | Spark | Openjdk   |
|---------------------------------|--------|-------|-----------|
| python-3.7-spark-3.0.1 (latest) | 3.7    | 3.0.1 | 11.0.9.1  |
| python-3.7-spark-2.4.7          | 3.7    | 2.4.7 | 1.8.0_275 |
| python-3.6-spark-2.4.7          | 3.6    | 2.4.7 | 1.8.0_275 |

## Usage

Pull Docker image:
```shell
docker pull jaygovind/pyspark:latest
```

Access shell:
```shell
docker run -it jaygovind/pyspark:latest
```

Access Python:
```shell
docker run -it jaygovind/pyspark:latest python
```

Access PySpark shell:
```shell
docker run -it jaygovind/pyspark:latest pyspark
```

Access `spark-submit`:
```shell
docker run -it jaygovind/pyspark:latest spark-submit
```

### Running the examples and shell
(source: https://spark.apache.org/docs/latest/)

Spark comes with several sample programs. Scala, Java, Python and R examples are in the 
`examples/src/main` directory. To run one of the Java or Scala sample programs, use 
`bin/run-example <class> [params]` in the top-level Spark directory. (Behind the scenes, 
this invokes the more general spark-submit script for launching applications). For example,

```shell
./bin/run-example SparkPi 10
```
You can also run Spark interactively through a modified version of the Scala shell. This 
is a great way to learn the framework.

```shell
./bin/spark-shell --master local[2]
```
The `--master` option specifies the master URL for a distributed cluster, or local to run locally 
with one thread, or `local[N]` to run locally with N threads. You should start by using local for 
testing. For a full list of options, run Spark shell with the `--help` option.

Spark also provides a Python API. To run Spark interactively in a Python interpreter, use 
`bin/pyspark`:

```shell
./bin/pyspark --master local[2]
```
Example applications are also provided in Python. For example,

```shell
./bin/spark-submit examples/src/main/python/pi.py 10
```
