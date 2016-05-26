DOWNLOAD=eclipse-java-mars-2-linux-gtk-x86_64.tar.gz
DIR=~/Downloads
TEMP=$DIR/eclipse
OPT=/opt
EXEC=eclipse
BIN=/usr/bin/eclipse44

cd $DIR
tar -xvzf $DOWNLOAD
sudo rm -rf $OPT/eclipse
sudo mv $TEMP $OPT/
sudo rm $BIN
sudo ln -s $OPT/$EXEC/$EXEC $BIN
cd $OPT/$EXEC
sudo rm eclipse.desktop
sudo printf '\n%s\n' '[Desktop Entry]
Name=Eclipse 
Type=Application
Exec=env UBUNTU_MENUPROXY=0 eclipse44
Terminal=false
Icon=eclipse
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse' >> eclipse.desktop
sudo desktop-file-install eclipse.desktop
