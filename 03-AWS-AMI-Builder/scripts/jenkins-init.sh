 #!/bin/bash
 
 echo "Starting YUM update"
 sudo yum update -y
 sudo /usr/sbin/update-motd --disable
 echo 'No unauthorized access permitted!' | sudo tee /etc/motd
 
 sudo rm /etc/issue
 sudo ln -s /etc/motd /etc/issue

 echo "Replacing Java 1.7.0 with 1.8.0 and installing Apache Tomcat 8"
 sudo yum remove java-1.7.0-openjdk -y
 sudo yum install java-1.8.0 java-1.8.0-openjdk-devel tomcat8-webapps -y
 sudo chkconfig tomcat8 on