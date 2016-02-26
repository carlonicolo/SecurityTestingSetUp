#Author: Carlo Nicolò aka Karlitos
#Script to setup the Security Testing environment

#Setting the user
#echo 'What is your username ? '
#read username

#Go to $HOME
#cd /home/$username/

#Go to $HOME
cd $HOME

#Create the folder SecurityTestingTools
mkdir SecurityTestingTools

#Go in SecurityTestingTools folder
cd SecurityTestingTools

#Download apache Tomcat and rename it in apache7
echo 'Downloading Apache Tomcat'
curl -o apache-tomcat7.tar.gz apache.fastbull.org/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz 

#Extract 
tar -xzvpf apache-tomcat7.tar.gz
echo 'Finish to extract the archive'
echo ''

#Download the file tomcat-users.xml
echo 'Downloading and writting the file tomcat-user.xml in Tomcat folder'
curl -o tomcat-users.xml http://www.carlonicolo.com/SecurityTesting/tomcat-users.xml

#Save this file in apache7
#mv tomcat-users.xml /home/$username/SecurityTestingTools/apache-tomcat-7.0.59/conf/
mv tomcat-users.xml apache-tomcat-7.0.59/conf/
echo ''

#Download WebScarab
echo 'Downloading webscarab' 
curl -o webscarab.jar http://www.carlonicolo.com/SecurityTesting/webscarab.jar 
echo ''

#Download WebGoat
echo 'Downloading WebGoat'
curl -o WebGoat.war https://webgoat.googlecode.com/files/WebGoat-5.4.war 

#Move WebGoat in apache-tomcat7/webapps
#mv WebGoat.war /home/$username/SecurityTestingTools/apache-tomcat-7.0.59/webapps
mv WebGoat.war $HOME/SecurityTestingTools/apache-tomcat-7.0.59/webapps


#Download scripts to start/shutdown Tomcat and open webscarab
curl -o UpDownEnvironment.sh http://www.carlonicolo.com/SecurityTesting/UpDownEnvironment.sh
curl -o webscarabScript.sh http://www.carlonicolo.com/SecurityTesting/webscarabScript.sh
chmod +x+u UpDownEnvironment.sh webscarabScript.sh



