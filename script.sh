echo "mnethaji999:mn" | chpasswd
echo "mnethaji999 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
#sed -i '27i mnethaji999 ALL=(ALL) NOPASSWD:ALL 27' /etc/sudoers
#sed '27 a mnethaji999 ALL=(ALL) NOPASSWD:ALL ' /etc/sudoers

sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart
