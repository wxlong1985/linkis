source ~/.bash_profile
cd ../../
mvn -Dmaven.test.skip=true package -pl linkis-engineconn-plugins/hive

scp -r linkis-engineconn-plugins/hive/target/out/hive hadoop@10.172.0.62:/data/dss/linkis/lib/linkis-engineconn-plugins/
ssh hadoop@10.172.0.62 "cd $LINKIS_HOME &&  source ~/.bash_profile && ./sbin/linkis-daemon.sh restart linkis-cg-linkismanager && ./sbin/linkis-daemon.sh restart linkis-cg-engineconnmanager"



cp  $LINKIS_HOME/lib/linkis-engineconn-plugins/hive/dist/3.1.2/lib/paimon-* $LINKIS_HOME/lib/linkis-commons/public-module/