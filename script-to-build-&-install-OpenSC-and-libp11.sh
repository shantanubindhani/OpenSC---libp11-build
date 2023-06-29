echo -e "building and installing OpenSC"

echo -e "entering Desktop/"
cd 
cd "$PWD/Desktop"

echo -e "Creating dir project-smartcard/"
echo -e "Entering project-smartcard/"
mkdir "$PWD/project-smartcard"
cd "$PWD/project-smartcard"

echo -e "Installing Git IF NOT FOUND"
sudo apt-get install git

echo -e "Cloning OpenSC repository"
git clone https://github.com/OpenSC/OpenSC.git "$PWD/OpenSC"

echo -e "entering OpenSC dir."
cd OpenSC 

echo -e "Installing required packages"
sudo apt-get install pcscd libccid libpcsclite-dev libssl-dev libreadline-dev autoconf automake build-essential docbook-xsl xsltproc libtool pkg-config zlib1g-dev

echo -e "bootstraping..."
./bootstrap

echo -e "Configuring..."
./configure --prefix=/usr --sysconfdir=/etc/opensc

echo -e "builing files... "
make

echo -e "INSTALLING ..."
sudo make install

echo -e "exiting OpenSC dir."
cd ..



echo -e "\n\nbuilding and installing libp11"

echo -e "cloning lip11 repository"
git clone https://github.com/OpenSC/libp11.git "$PWD/libp11"

echo -e "entering libp11 dir."
cd libp11

echo -e "Installing required packages"
sudo apt install pkgconf libssl-dev

echo -e "Configuring and building files ... "
./configure && make

echo -e "Verifying build ... "
make check

echo -e "INSTALLING ..."
sudo make install

echo -e "exiting libp11 dir."
cd ..


echo -e "\nInstalling pkcs-tool"
sudo apt-get install pcsc-tools

echo -e "\n\n ALL build files have been placed in > $PWD"


