#!/bin/bash
spark-submit --class com.deep6analytics.spark.ml.SvmTrain --master yarn-cluster --num-executors 3 --driver-memory 512m --executor-memory 512m --executor-cores 1 svm-spark-*-dependencies.jar -i hdfs://sandbox.hortonworks.com:8020/user/root/sparksvm-shell/apps/spark/testVector -o hdfs://sandbox.hortonworks.com:8020/user/root/sparksvm-shell/apps/spark/output -l hdfs://sandbox.hortonworks.com:8020/user/root/sparksvm-shell/apps/spark/testLabels -n 10