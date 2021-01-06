ARG PYTHON_VERSION=3.8

FROM python:$PYTHON_VERSION-alpine

ARG SPARK_VERSION=3.0.1
ARG OPENJDK_VERSION=11
ARG HADOOP_VERSION=2.7
ARG PY4J_VERSION=0.10.9

# Configure
ENV SPARK_PACKAGE=spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION
ENV SPARK_HOME=/opt/$SPARK_PACKAGE
ENV PATH=$SPARK_HOME/bin:$PATH
ENV PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
ENV PYTHONPATH=$SPARK_HOME/python/lib/py4j-$PY4J_VERSION-src.zip:$PYTHONPATH

# Install
RUN apk add --update --no-cache wget bash openjdk$OPENJDK_VERSION && \
    wget -P /tmp https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/$SPARK_PACKAGE.tgz \
        --tries=5 && \
    tar xvf /tmp/$SPARK_PACKAGE.tgz --directory /opt && \
    rm /tmp/$SPARK_PACKAGE.tgz && \
    apk del wget

CMD ["/bin/bash"]