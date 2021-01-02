# PySpark Docker Images

## Usage

Pull Docker image:
```docker
docker pull jaygovind/pyspark:python-3.7-spark-2.4.7
```

Access shell:
```docker
docker run -it jaygovind/pyspark:python-3.7-spark-2.4.7
```

Access Python:
```docker
docker run -it jaygovind/pyspark:python-3.7-spark-2.4.7 python
```

Access PySpark shell:
```docker
docker run -it jaygovind/pyspark:python-3.7-spark-2.4.7 pyspark
```

Access `spark-submit`:
```docker
docker run -it jaygovind/pyspark:python-3.7-spark-2.4.7 spark-submit
```

## Docker tags
### latest
```docker
docker pull jaygovind/pyspark:latest
```
Python: 3.7<br/>
Spark: 2.4.7

### python-3.7-spark-2.4.7
```docker
docker pull jaygovind/pyspark:python-3.7-spark-2.4.7
```
Python: 3.7<br/>
Spark: 2.4.7