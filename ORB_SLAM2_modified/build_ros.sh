echo "Building ROS nodes"

cd Examples/ROS/ORB_SLAM2
rm -rf build # before 'mkdir build' add 'rm -rf build'
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j
