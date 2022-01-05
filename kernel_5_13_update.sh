echo " " &&
echo "This script will attempt to install Linux Kernel 5.13 on this machine." &&
echo "Typically, your current version will be kept, and you will be able to ustilise it again later if Kernel 5.13 does not work." &&
echo " " &&
read -p "Press Enter to continue, or abort by pressing CTRL+C" nothing &&
echo " " &&
echo "Downloading Kernel 5.13 Packages" &&
echo "4 Files to Download" &&
echo " " &&
echo "Creating Kernel Directory in Home folder" &&
echo " " &&
mkdir -p $HOME/kernel-5-13 &&
cd $HOME/kernel-5-13 &&
echo " " &&
echo "Downloading File 1 of 4" &&
echo " " &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.13/amd64/linux-headers-5.13.0-051300_5.13.0-051300.202106272333_all.deb &&
echo " " &&
echo "Downloading File 2 of 4" &&
echo " " &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.13/amd64/linux-headers-5.13.0-051300-generic_5.13.0-051300.202106272333_amd64.deb &&
echo " " &&
echo "Downloading File 3 of 4" &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.13/amd64/linux-image-unsigned-5.13.0-051300-generic_5.13.0-051300.202106272333_amd64.deb &&
echo " " &&
echo "Downloading File 4 of 4" &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.13/amd64/linux-modules-5.13.0-051300-generic_5.13.0-051300.202106272333_amd64.deb &&
echo " " &&
echo " " &&
echo "Installing Kernel" &&
echo "This step will require you password." &&
echo "This is the last step you can safely cancel at." &&
echo "Use Ctrl+C to cancel." &&
echo " " &&
sudo dpkg -i *.deb &&
echo " " &&
echo "Installation Complete" &&
echo " " &&
read -p "Press Enter to Delete the Downloads, or CTRL+C to keep them." nothing &&
echo " " &&
sudo rm -rf $HOME/kernel-5-13
