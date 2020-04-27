#!/bin/sh

export TURTLEBOT_GAZEBO_WORLD_FILE=/home/workspace/catkin_ws/src/map/myworld.world
export TURTLEBOT_GAZEBO_MAP_FILE=/home/workspace/catkin_ws/src/map/map.pgm

xterm  -e  " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 5
xterm  -e  " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch " & 
sleep 5
xterm  -e  " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch " 
