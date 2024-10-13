import launch
from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='gog_g0i_autonom',
            executable='local_time.py',  # This should match your Python script
            name='local_time_node',
            output='screen',
        ),
        Node(
            package='gog_g0i_autonom',
            executable='china_time.py',  # This should match your Python script
            name='china_time_node',
            output='screen',
        )
    ])