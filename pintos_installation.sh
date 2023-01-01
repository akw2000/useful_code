# VM setup
# ubuntu install
# mem 5gb
# storage 30gb
# // copy paste btw windows and vm + auto resize
sudo apt install build-essential dkms linux-headers-$(uname -r)
# // devices tab -> install guest images

# //git
sudo apt update
sudo apt install git
git --version

# // pintos copy
git clone https://github.com/jhu-cs318/pintos.git 
sudo apt-get install build-essential automake git
sudo apt-get install libncurses5-dev texinfo

# //mkdir toolchain on basefolder
mkdir -p ~/cs2043Labs/toolchain

# // cd to pintos/src
# // takes long time(10 -20 min)
misc/toolchain-build.sh ~/cs2042Labs/toolchain/

# // add to .bashrc or .zshrc
export PATH=/home/akw/cs2042Labs/toolchain/x86_64/bin:$PATH

# // checking if that works -> restart terminal
which i386-elf-gcc 
i386-elf-gcc --version 

# use one of following cmds based on the OS version
# // install qemu emulator ubuntu 18.04
sudo apt-get install qemu libvirt-daemon-system libvirt-clients
# // new ubuntu
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# // setup the utility tools
cd pintos/src/utils && make
# run the command in src/utils
cp backtrace pintos Pintos.pm pintos-gdb pintos-set-cmdline pintos-mkdisk setitimer-helper squish-pty squish-unix /home/akw/cs2042Labs/toolchain/x86_64/bin

mkdir /home/akw/cs2042Labs/toolchain/x86_64/misc

cp ../misc/gdb-macros  /home/akw/cs2042Labs/toolchain/x86_64/misc



# // additional sw(optional)
sudo apt-get install cgdb
sudo apt-get install ctags
sudo apt-get install scope
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

# You complete me
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm


cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

# vscode
sudo snap install --classic code
code --version

--------------- 
# test cases failed -> pintos doesn't boot when test cases running
# threads/make.vars
# change boch to qemu
# SIMULATOR = --qemu
