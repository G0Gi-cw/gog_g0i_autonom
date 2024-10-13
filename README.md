# `gog_g0i_autonom` package
ROS 2 PYTHON package.  [![Static Badge](https://img.shields.io/badge/ROS_2-Humble-34aec5)](https://docs.ros.org/en/humble/)
## Packages and build

It is assumed that the workspace is `~/ros2_ws/`.

My program is displaying the time from our local timezone, and after that it is going to display the chineese
time. I built the project with VisualStudio 2022. Used WSL, and used Ubuntu 22.04.5 LTS to try to build the program.

### Build ROS 2 packages
1.Open the terminal
2.Type: "CD {location of the project}" example "cd C:\Users\PC\source\repos\G0Gi-cw\gog_g0i_autonom"
2.If you are using WSL then put /mnt before the location example "cd /mnt/c/Users/PC/source/repos/G0Gi-cw/gog_g0i_autonom"
3.Type "colcon build" into the terminal
4.Type "source install/setup.bash"
5.Type "ros2 launch gog_g0i_autonom time_launch.py"
6. Finally it is going to show the time in your local timezone and in China!!!

