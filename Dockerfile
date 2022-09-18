FROM osrf/ros:noetic-desktop-full

RUN apt-get update && apt-get install -y \
  ros-noetic-joy ros-noetic-teleop-twist-joy \
  ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
  ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
  ros-noetic-rosserial-python ros-noetic-rosserial-client \
  ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
  ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
  ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
  ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers \
  ros-noetic-dynamixel-sdk \
  ros-noetic-turtlebot3-msgs \
  ros-noetic-turtlebot3 \
  ros-noetic-gmapping \
  && rm -rf /var/lib/apt/lists/*

# Setup so that shells have correct
RUN touch /root/.bashrc \
 && echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc \
 && echo "source catkin_ws/devel/setup.bash" >> /root/.bashrc \
 && echo "export TURTLEBOT3_MODEL=burger" >> /root/.bashrc 