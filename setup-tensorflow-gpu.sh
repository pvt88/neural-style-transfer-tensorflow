#!/bin/bash

# update apt-get and required packages
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y opencl-headers build-essential protobuf-compiler \
    libprotoc-dev libboost-all-dev libleveldb-dev libsnappy1 libopencv-core-dev \
    libopencv-highgui-dev libsnappy-dev libhdf5-serial-dev libatlas-base-dev \
    libstdc++6-4.8-dbg libgoogle-glog0 libgoogle-glog-dev libgflags-dev \
    liblmdb-dev git gfortran hdf5-tools
    
sudo apt-get install -y python-pip python-dev python-numpy python-scipy
sudo apt-get install -y linux-image-extra-`uname -r` linux-headers-`uname -r` linux-image-`uname -r`


# install cuda
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update
sudo apt-get install -y cuda
sudo apt-get clean


# install tensorflow
pip install — upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl

