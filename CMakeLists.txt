cmake_minimum_required(VERSION 3.5)
project(gog_g0i_autonom)  # Package name should match package.xml <name> element

# Find required packages
find_package(ament_cmake REQUIRED)
find_package(rclpy REQUIRED)
find_package(std_msgs REQUIRED)

# Install Python scripts
install(PROGRAMS
  packages/china_time.py
  packages/local_time.py
  DESTINATION lib/${PROJECT_NAME}
)

# Install the launch files
install(DIRECTORY packages/
  DESTINATION share/${PROJECT_NAME}/
  FILES_MATCHING PATTERN "*.py"
)

# Declare ament package
ament_package()