
#!/bin/sh

# prerequisites
# jdk  1.7 or higher 
# curl
# wget

DEMO_HOME=`pwd`

# start all
cd $DEMO_HOME

export CASSANDRA_HOME=$DEMO_HOME/apache-cassandra-2.1.7
$CASSANDRA_HOME/bin/cassandra

export SPARK_HOME=$DEMO_HOME/spark
export SPARK_LOCAL_IP=localhost
export SPARK_MASTER_IP=localhost

$SPARK_HOME/sbin/start-all.sh 

# at this point check http://localhost:8080
# you should see your standalone spark cluster up and running

export ZEPPELIN_HOME=$DEMO_HOME/incubator-zeppelin

$ZEPPELIN_HOME/bin/zeppelin-daemon.sh start

# at this point check http://localhost:8888
# you should see your zeppelin ide
# remember to add spark.cassandra.connection.host = localhost in the spark context




