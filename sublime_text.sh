DOWNLOAD=sublime_text_3_build_3114_x64.tar.bz2
LINK=https://download.sublimetext.com/$DOWNLOAD
DIR=temp_install_x
SUBLIME=sublime_text_3
EXEC=sublime_text
OPT=/opt

cd ~
rm -rf $DIR
mkdir $DIR
cd $DIR
wget $LINK
tar vxjf $DOWNLOAD
rm $DOWNLOAD
sudo rm -rf $OPT/$SUBLIME
sudo mv $SUBLIME/ $OPT/
rm -rf $DIR
sudo rm /usr/bin/sublime
sudo ln -s $OPT/$SUBLIME/$EXEC /usr/bin/sublime
