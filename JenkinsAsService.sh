# ref link : https://pkg.jenkins.io/debian-stable/
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/' >> /etc/apt/sources.list
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install jenkins -y
sudo service jenkins status
