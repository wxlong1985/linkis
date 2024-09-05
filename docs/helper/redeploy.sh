source ~/.bash_profile
cd $LINKIS_HOME
echo `pwd`
rm -fr lib
cp -fr /data/IdeaProjects/linkis/linkis-dist/target/apache-linkis-1.6.0-bin/linkis-package/lib .
./sbin/linkis-daemon.sh restart linkis-cg-linkismanager
./sbin/linkis-daemon.sh status linkis-cg-linkismanager
./sbin/linkis-daemon.sh restart linkis-cg-engineconnmanager
./sbin/linkis-daemon.sh status linkis-cg-engineconnmanager