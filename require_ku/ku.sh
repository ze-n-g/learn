#! /bin/bash
set -e

# update apt source
sudo apt update
sudo apt update
sudo apt install vim openssh-server tmux net-tools -y
sudo apt install x2goserver x2goserver-xsession curl -y
sudo apt install unzip zip rar unrar git cmake-curses-gui gedit clang htop tree lrzsz samba smbclient cifs-utils tightvncserver xrdp vlc -y
sudo apt install gcc g++ cmake gdb build-essential make libpng-dev libboost-all-dev -y 
# 可选
sudo apt install nethogs slurm dos2unix libpam-cracklib

# OpenGL
sudo apt-get install libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev
# OpenGL可选
sudo apt install mesa-utils
# 安装这些依赖的时候好像会安装python2.7，我也不知道为啥。而且安装完后运行python会自动运行python2.7，不过重新注入环境变量了以后再运行python用的就是conda里面的python，所以我也就没有管它了。
sudo apt install gcc g++ cmake build-essential make libpng-dev libboost-all-dev -y 
sudo apt install libeigen3-dev liblapack-dev libcxsparse3 libgflags-dev libgoogle-glog-dev libatlas-base-dev libgtest-dev cmake libsuitesparse-dev qtdeclarative5-dev qt5-qmake qt5-default libqglviewer-dev-qt5 libcxsparse3 libcholmod3 libgl1-mesa-dev libglew-dev liblz4-dev libfmt-dev -y 
# 安装Pangolin出现‘No package ‘xkbcommon’ found’
sudo apt install libxkbcommon-x11-dev

# Pangolin
git clone --depth=1 https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
mkdir build
cd build
cmake ..
make -j7
sudo make install
cd ../..

# Sophus
git clone --depth=1 https://github.com/strasdat/Sophus.git
cd Sophus
mkdir build
cd build
cmake ..
make -j7
sudo make install #可以不安装，但是我还是装了
cd ../..

# ceres
git clone -b 2.1.0 --depth=1 https://github.com/ceres-solver/ceres-solver.git
cd ceres-solver
mkdir build
cd buildm
cmake ..
make -j7
sudo make install
cd ../..

# g2o
git clone --depth=1 https://github.com/RainerKuemmerle/g2o.git
cd g2o
mkdir build
cd build
cmake ..
make -j7
sudo make install
cd ../..

# glog
#git clone --depth=1 -b v0.6.0 https://github.com/google/glog.git
#cd glog
#cmake -S . -B build -G "Unix Makefiles"
#cmake --build build
#cmake --build build --target install
#cd ..
