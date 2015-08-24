#!/bin/bash
export HADOOP_CONF_DIR=/etc/hadoop/conf
echo $HADOOP_CONF_DIR
export YARN_CONF_DIR=/etc/hadoop/conf
echo $YARN_CONF_DIR
export YARN_CONF=/etc/hadoop/conf/yarn-site.xml
echo $YARN_CONF
export SPARK_YARN_USER_ENV="CLASSPATH=/etc/hadoop/conf/"
echo $SPARK_YARN_USER_ENV
oozie job -oozie http://localhost:11000/oozie -config job.properties -run
