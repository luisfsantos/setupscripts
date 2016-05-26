DOWNLOAD=apache-maven-3.3.9-bin.tar.gz
LINK=http://mirrors.fe.up.pt/pub/apache/maven/maven-3/3.3.9/binaries/$DOWNLOAD
DIR=~/temp_install_x
OPT=/opt
EXEC=apache-maven-3.3.9
NEWEXEC=maven

rm -rf $DIR
mkdir $DIR
cd $DIR
wget $LINK
tar -xvzf $DOWNLOAD
rm $DOWNLOAD
sudo rm -rf $OPT/$NEWEXEC
sudo mv $EXEC/ $OPT/$NEWEXEC
printf '\n %s\n%s\n' 'export M2_HOME=/opt/maven' 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bashrc
rm -rf $DIR



