#!/bin/bash 
sudo sed -re 's/(PasswordAuthentication)([[:space:]]+)no/\1\2yes/' -i.`date -I` /etc/ssh/sshd_config #Editing config
sudo sed -re 's/(\#?)(PermitRootLogin)([[:space:]]+)prohibit-password/\2\3yes/' -i.`date -I` /etc/ssh/sshd_config #Editing Config
sudo echo 'root:Admin123#' | chpasswd # Setting root password to 'Admin123#'
sudo echo 'ec2-user:Admin123#' | chpasswd #Setting ec2 user's password to 'Admin123#' for centos/RHEL servers
sudo echo 'ubuntu:Admin123#' | chpasswd #Setting ubuntu user's password to 'Admin123#' for ubuntu servers
sudo service sshd restart #Restarting ssh deamon.
sudo systemctl restart sshd #Restarting sshd in RHEL version.

##NOTE: After launching instances, please leave 3 minutes before logging in.









