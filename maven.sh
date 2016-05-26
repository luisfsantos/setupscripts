DOWNLOAD=apache-maven-3.3.9-bin.tar.gz
LINK=http://mirrors.fe.up.pt/pub/apache/maven/maven-3/3.3.9/binaries/$DOWNLOAD
DIR=~/temp_install_x
OPT=/opt

rm -rf $DIR
mkdir $DIR
cd $DIR
wget $LINK
tar vxjf $DOWNLOAD
rm $DOWNLOAD
