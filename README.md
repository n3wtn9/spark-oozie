# spark-oozie
experimenting with launching spark jobs with oozie

look in job.properties for variable arguments 
oozie.wf.application.path=${nameNode}/user/${user.name}/${examplesRoot}/apps/spark

# copy the following files to hdfs in oozie's application path
workflow.xml -> workflow.xml
oozie-examples.jar -> lib/oozie-examples.jar
data.txt -> input-data/text/data.txt

added

spark-assembly-*.jar to hdfs:///user/oozie/share/lib/lib_*/spark/

added to oozie-site.xml

<property>
<name>oozie.service.SparkConfigurationService.spark.configurations</name>
<value>spark.yarn.historyServer.address=http://SPH-HOST:18088, spark.eventLog.dir=hdfs://NN:8020/user/spark/applicationHistory, spark.eventLog.enabled=true</value>
