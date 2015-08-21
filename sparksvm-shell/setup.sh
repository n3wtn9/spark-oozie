#!/bin/bash

echo "delete sparksvm-shell dir"
hdfs dfs -rm -r -skipTrash sparksvm-shell
echo "create sparksvm-shell dir"
hdfs dfs -mkdir -p sparksvm-shell/apps/spark/lib
echo "add svm-spark-*-dependencies.jar to lib"
hdfs dfs -copyFromLocal svm-spark*dependencies.jar sparksvm-shell/apps/spark/lib/spark-svm.jar
echo "add workflow.xml to job dir"
hdfs dfs -copyFromLocal workflow.xml sparksvm-shell/apps/spark
echo "add testLabels to job dir"
hdfs dfs -copyFromLocal testLabels sparksvm-shell/apps/spark
echo "add testVector to job dir"
hdfs dfs -copyFromLocal testVector sparksvm-shell/apps/spark
