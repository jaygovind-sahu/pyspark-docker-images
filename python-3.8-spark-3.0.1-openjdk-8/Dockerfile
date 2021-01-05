FROM python:3.8-alpine

# Update and install dependencies
RUN apk add --update --no-cache wget bash openjdk8

# Download Spark
RUN wget -P /tmp https://archive.apache.org/dist/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz --tries=5 && \
    tar xvf /tmp/spark-3.0.1-bin-hadoop2.7.tgz --directory /opt && \
    rm /tmp/spark-3.0.1-bin-hadoop2.7.tgz

# Configure Environment
ENV SPARK_VERSION=3.0.1
ENV SPARK_HOME=/opt/spark-3.0.1-bin-hadoop2.7
ENV PATH=$SPARK_HOME/bin:$PATH
ENV PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
ENV PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.9-src.zip:$PYTHONPATH

# Clean up
RUN apk del wget

CMD ["/bin/bash"]