source ~/.bash_profile
cd $DSS_INSTALL_HOME
rm -fr *
cp /data/IdeaProjects/DataSphereStudio/assembly/target/wedatasphere-dss-1.1.2-dist.tar.gz .
tar -xvf wedatasphere-dss-1.1.2-dist.tar.gz
cp -fr ../config/* config
sh bin/dssinstall.sh
unzip -d $LINKIS_HOME/lib/linkis-engineconn-plugins -o ${DSS_HOME}/dss-appconns/linkis-engineplugin-appconn.zip
mv $LINKIS_HOME/lib/linkis-engineconn-plugins/linkis-engineplugin-appconn $LINKIS_HOME/lib/linkis-engineconn-plugins/appconn
cd $DSS_HOME