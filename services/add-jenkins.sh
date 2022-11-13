#!/bin/bash
echo "Downloading repository information..."
sudo wget https://pkg.jenkins.io/redhat/jenkins.repo -O /etc/yum.repos.d/jenkins.repo

echo "Importing the repository key..."
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

echo "Installing Jenkins and Java..."
sudo dnf install -y jenkins

echo "Starting Jenkins..."
sudo systemctl start jenkins

echo "Enabling Jenkins..."
sudo systemctl enable jenkins

echo "Check Jenkins status..."
systemctl status jenkins

echo "Show the initialAdminPassword..."
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#To be able to work with Jenkins from the browser on our host, we must enable port 8080/tcp in the firewall
#sudo firewall-cmd --permanent --add-port=8080/tcp
#We will need one more port
#sudo firewall-cmd --permanent --add-port=80/tcp
#And finally, reload firewall’s configuration
#sudo firewall-cmd --reload

