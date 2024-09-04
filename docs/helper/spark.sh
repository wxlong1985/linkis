export taskdir=/data/dss/appcom/tmp/hadoop/20240828/spark/a50e4c88-afd7-45bd-9e67-730c761fda13/
source ~/.bash_profile

cd ../../
mvn -Dmaven.test.skip=true package -pl linkis-engineconn-plugins/spark
#cp -fr linkis-engineconn-plugins/spark/target/out/spark/ $LINKIS_HOME/lib/linkis-engineconn-plugins/
#tree $LINKIS_HOME/lib/linkis-engineconn-plugins/

find /data/dss/ -name 'linkis-engineplugin-spark-1.6.0.jar' -print -exec cp linkis-engineconn-plugins/spark/target/linkis-engineplugin-spark-1.6.0.jar {} \;

#cp linkis-engineconn-plugins/spark/target/linkis-engineplugin-spark-1.6.0.jar ${taskdir}/lib/


cd $LINKIS_HOME
./sbin/linkis-daemon.sh restart linkis-cg-linkismanager
./sbin/linkis-daemon.sh restart linkis-cg-engineconnmanager



# run service
#cd $taskdir
#rm -fr logs/*
#sh engineConnExec.sh


#export lnstall_dir=/data/dss/linkis_tmp
#cp /data/IdeaProjects/linkis/linkis-dist/target/apache-linkis-1.6.0-bin.tar.gz ${lnstall_dir}
#cd $lnstall_dir
#tar -zxvf apache-linkis-1.6.0-bin.tar.gz
#rm -fr ../linkis
#cp -fr ../deploy-config/ .
#cp -fr ../checkEnv.sh ./bin/
#sh bin/install.sh
#cd ../linkis
