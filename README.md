# ORBSLAM2_with_pointcloud_map
This is a modified ORB_SLAM2 (from https://github.com/raulmur/ORB_SLAM2, thanks for Raul's great work!) with a online point cloud map module running in RGB-D mode. You can visualize your point cloud map during the SLAM process. I have tested to generate a pointcloud map on a dataset. In addition, I have tested a real-time ORB-SLAM2 with an RGB-D camera of Kinect v2 to generate a pointcloud map.

# How to Install
Enter the directory of ORB_SLAM2_modified, and execute the two scripts in sequence:

```
chmod +x build.sh
./build.sh
chmod +x build_ros.sh
./build_ros.sh
```

There is a g2o library in the directory of Thirdparty. Following the instructions from the original g2o library: [https://github.com/RainerKuemmerle/g2o] if you have dependency problems. I just add the extra vertecies and edges provided in ORB_SLAM2 into g2o. 

# Run an example on a dataset
Prepare a dataset, and give the correct parameters and you can get an ORB-SLAM2 with point cloud maps like the example_dataset.png in this repo.
You can download a TUM dataset from http://vision.in.tum.de/data/datasets/rgbd-dataset/download and uncompress it.
Execute:

```
./bin/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/TUM1.yaml PATH_TO_dataset_FOLDER ASSOCIATIONS_FILE

```

I execute the following command in my computer: 

```
./bin/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/TUM1.yaml /home/yuanlibin/dataset/rgbd_dataset_freiburg1_xyz Examples/RGB-D/associations/fr1_xyz.txt

```

# Run an example with Kinect v2
Prepare a calibrated Kinect v2, and give the correct parameters and you can get an ORB-SLAM2 with point cloud maps like the example_Kinectv2.png and in this repo.
Execute:

Teminal1:

```
roslaunch kinect2_bridge kinect2_bridge.launch
```

Teminal2:

```
rosrun ORB_SLAM2 RGBD PATH_TO_VOCABULARY PATH_TO_SETTINGS_FILE
```

I execute the command of teminal2 in my computer as follows: 

```
rosrun ORB_SLAM2 RGBD /home/yuanlibin/ORBSLAM2_with_pointcloud_map/ORB_SLAM2_modified/Vocabulary/ORBvoc.txt /home/yuanlibin/ORBSLAM2_with_pointcloud_map/ORB_SLAM2_modified/Examples/RGB-D/TUM3.yaml
```

