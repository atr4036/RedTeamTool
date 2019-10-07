#!/bin/bash

printf "username@ip: "
read username

if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen -b 2048 -N "" -f ~/.ssh/id_rsa 
fi

scp ~/.ssh/id_rsa.pub $username:~/.ssh/authorized_keys
ssh -t $username 'sudo chattr +i ~/.ssh/authorized_keys; sudo chattr +i /etc/ssh/sshd_config'
