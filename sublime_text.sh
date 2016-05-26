DOWNLOAD=sublime_text_3_build_3114_x64.tar.bz2
LINK=https://download.sublimetext.com/$DOWNLOAD
DIR=~/temp_install_x
SUBLIME=sublime_text_3
EXEC=sublime_text
BIN=/usr/bin/sublime
OPT=/opt

rm -rf $DIR
mkdir $DIR
cd $DIR
wget $LINK
tar vxjf $DOWNLOAD
rm $DOWNLOAD
sudo rm -rf $OPT/$SUBLIME
sudo mv $SUBLIME/ $OPT/
rm -rf $DIR/
sudo rm $BIN
sudo ln -s $OPT/$SUBLIME/$EXEC $BIN
cd $OPT/$SUBLIME
sudo rm sublime.desktop
sudo printf '\n%s\n' '[Desktop Entry]
Name=Sublime
Type=Application
Exec=env UBUNTU_MENUPROXY=0 sublime
Terminal=false
Icon=sublime
Comment=Sublime Text
NoDisplay=false
Categories=Development;
Name[en]=Sublime' >> sublime.desktop
sudo desktop-file-install sublime.desktop
