#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from std_msgs.msg import String
import time
from datetime import datetime, timedelta

class ChinaTimeNode(Node):
    def __init__(self):
        super().__init__('china_time_node')
        self.publisher_ = self.create_publisher(String, 'china_time', 10)
        timer_period = 1  # seconds
        self.timer = self.create_timer(timer_period, self.timer_callback)

    def timer_callback(self):
        # China Standard Time is UTC+8
        china_time = datetime.utcnow() + timedelta(hours=8)
        msg = String()
        msg.data = f'China time: {china_time.strftime("%Y-%m-%d %H:%M:%S")}'
        self.publisher_.publish(msg)
        self.get_logger().info(f'Publishing: "{msg.data}"')

def main(args=None):
    rclpy.init(args=args)
    node = ChinaTimeNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()