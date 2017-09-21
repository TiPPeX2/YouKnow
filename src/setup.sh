# Update debian
apt-get update -q -y
apt-get upgrade -q -y
apt-get dist-upgrade -q -y

# Install X & LXDE & VNC
apt-get -q -y install xorg lxde-core tightvncserver

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

#Install java8
apt-get install software-properties-common
add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main"
apt-get update
apt-get install -q -y oracle-java8-installer

#Download osbot
mkdir ~/Desktop/
curl -o ~/Desktop/osbot.jar https://osbot.org/mvc/get
chmod +x ~/Desktop/osbot.jar

# Create vnc and ask password
tightvncserver :1
tightvncserver -kill :1

#Add config
wget https://github.com/TiPPeX2/YouKnow/blob/master/src/startup.sh -O ~/.vnc/xstartup

#boot vnc
tightvncserver :1