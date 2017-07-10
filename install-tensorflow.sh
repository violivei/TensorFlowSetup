# Installing dependencies & build tools
# First we need to install the dependencies and basic build tools required by TensorFlow. 
# To do this execute the following commands from the ubuntu command prompt.
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential git python-pip libfreetype6-dev libxft-dev libncurses-dev libopenblas-dev gfortran python-matplotlib libblas-dev liblapack-dev libatlas-base-dev python-dev python-pydot linux-headers-generic linux-image-extra-virtual unzip python-numpy swig python-pandas python-sklearn unzip wget pkg-config zip g++ zlib1g-dev libcurl3-dev
sudo pip install -U pip

# Installing CUDA 8
# Second we wish to use the latest version of the CUDA library with the instance type. 
# The latest version at the date of writing this post is 8.0. 
# To install CUDA download the package from NVIDIA and install it.
wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
rm cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
sudo apt-get update
sudo apt-get install -y cuda

# Configure the Environment
# Finally we need to configure the environment to work with CUDA and cuDNN. 
# Add to the following lines to your ~/.profile file.
export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda
export PATH=$PATH:$CUDA_ROOT/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_ROOT/lib64