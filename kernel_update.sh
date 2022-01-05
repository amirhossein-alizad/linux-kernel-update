echo " " &&
echo "This script will attempt to install Linux Kernel 5.11 on this machine." &&
echo "Typically, your current version will be kept, and you will be able to ustilise it again later if Kernel 5.11 does not work." &&
echo " " &&
read -p "Press Enter to continue, or abort by pressing CTRL+C" nothing &&
echo " " &&
echo "Downloading Kernel 5.11 Packages" &&
echo "5 Files, ~89 MB to Download" &&
echo " " &&
echo "Creating Kernel Directory in Home folder" &&
echo " " &&
mkdir -p $HOME/kernel-5-11 &&
cd $HOME/kernel-5-11 &&
echo " " &&
echo "Downloading File 1 of 5, 11 MB" &&
echo " " &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.22/amd64/linux-headers-5.11.0-20_5.11.0-20.21+21.10.1_all.deb &&
echo " " &&
echo "Downloading File 2 of 5, 2.5 MB" &&
echo " " &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.22/amd64/linux-headers-5.11.0-20-generic_5.11.0-20.21+21.10.1_amd64.deb &&
echo " " &&
echo "Downloading File 3 of 5, 11 MB" &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.22/amd64/linux-image-unsigned-5.11.0-20-generic_5.11.0-20.21+21.10.1_amd64.deb &&
echo " " &&
echo "Downloading File 4 of 5, 17 MB" &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.22/amd64/linux-modules-5.11.0-20-generic_5.11.0-20.21+21.10.1_amd64.deb &&
echo " " &&
echo "Downloading File 5 of 5, 47 MB" &&
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.22/amd64/linux-modules-extra-5.11.0-20-generic_5.11.0-20.21+21.10.1_amd64.deb &&
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
sudo rm -rf $HOME/kernel-5-11