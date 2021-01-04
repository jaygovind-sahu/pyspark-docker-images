# PySpark Docker Images

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

## Docker tags
### latest
```shell
docker pull jaygovind/pyspark:latest
```
Python: 3.7<br/>
Spark: 3.0.1<br/>
openjdk: 11.0.9.1

### python-3.7-spark-3.0.1
```shell
docker pull jaygovind/pyspark:latest
```
Python: 3.7<br/>
Spark: 3.0.1<br/>
openjdk: 11.0.9.1

### python-3.7-spark-2.4.7
```shell
docker pull jaygovind/pyspark:python-3.7-spark-2.4.7
```
Python: 3.7<br/>
Spark: 2.4.7<br/>
openjdk: 1.8.0_275

### python-3.6-spark-2.4.7
```shell
docker pull jaygovind/pyspark:python-3.6-spark-2.4.7
```
Python: 3.6<br/>
Spark: 2.4.7<br/>
openjdk: 1.8.0_275