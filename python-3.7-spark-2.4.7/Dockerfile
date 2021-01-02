FROM openjdk:8-jre-slim

# Update and install dependencies
RUN apt-get update -y && \
    apt-get install wget -y

# Install Python and add symlink
RUN apt-get install python3.7 -y && \
    ln -s /usr/bin/python3.7 /usr/bin/python

# Down Spark
RUN wget -P /tmp https://archive.apache.org/dist/spark/spark-2.4.7/spark-2.4.7-bin-hadoop2.7.tgz --tries=5 && \
    tar xvf /tmp/spark-2.4.7-bin-hadoop2.7.tgz --directory /opt && \
    rm /tmp/spark-2.4.7-bin-hadoop2.7.tgz

# Configure Environment
ENV SPARK_VERSION=2.4.7
ENV SPARK_HOME=/opt/spark-2.4.7-bin-hadoop2.7
ENV PATH=$SPARK_HOME/bin:$PATH
ENV PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
ENV PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH

# Clean up
RUN apt-get remove wget -y && \
    apt-get clean