#Update Ubuntu system package
sudo apt update && sudo apt upgrade -y

#Install required tools and packages
sudo apt install build-essential cmake git wget unzip libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

#Install DC1394 && GStreamer
sudo apt install libdc1394-dev install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

#Creat a folder to install opencv
cd ~ && mkdir OpenCV && cd OpenCV

#Download and unpack sources
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.x.zip
unzip opencv.zip
unzip opencv_contrib.zip

#Create build directory and switch into it
mkdir -p build && cd build


#Configure
cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.x/modules ../opencv-4.x

#

# Build
cmake --build .

#Confirmation of successful library addition.
make -j4
sudo make install
