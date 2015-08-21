#!/bin/bash
spark-submit --class org.apache.spark.examples.SparkPi --master yarn-cluster --num-executors 3 --driver-memory 512m --executor-memory 512m --executor-cores 1 spark-examples*.jar 10
