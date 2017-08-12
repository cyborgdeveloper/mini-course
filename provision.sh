apt-get update -y
apt-get install default-jdk -y
apt-get install tomcat7 -y
apt-get install maven -y

cd /vagrant/
wget https://github.com/cyborgdeveloper/maven-web/archive/master.zip
unzip master.zip
cd maven-web-master/
mvn package
cp /vagrant/maven-web-master/target/maven-web.war /var/lib/tomcat7/webapps/
