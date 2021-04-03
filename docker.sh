#!/bin/bash

#docker_installation

if [ ! -x /var/lib/docker ]; then
      
        echo "INSTALLING docker"
echo
echo    #install docker dependencies 
         sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
echo
echo   #add docker’s official GPG key
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo
echo
        #set up the stable repository.
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"	
echo
echo
	#update the packages
	sudo apt update -y

echo
echo
	#checks install from the Docker repo instead of the default Ubuntu repo:
	sudo apt-cache policy docker-ce 
echo
echo

	#installing dcoker through docker-ce
	sudo apt install docker-ce -y 
echo
echo
	#installing docker-compose
	 sudo apt install docker-compose -y
echo
echo
       #adds your username to the docker group
	sudo usermod -aG docker ${USER}
       
       echo "docker successfully installed"

echo
echo

else

echo
echo
        echo "DOCKER ALREADY INSTALLED"
echo
echo

fi