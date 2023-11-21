!# /bin/bash
#This script will install Jenkins LTS on an Ubuntu machine

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key #Downloads package from jenkins website
  
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
  
sudo apt-get update #updates apps and dependencies required for jenkins install
sudo apt-get install jenkins #installs Jenkins
