/* File: setjointspeed.ch 
   Get and set a joint speed. */
#include <linkbot.h>
CLinkbotI robot;
double speed;  // the joint speed in degrees per second

/* connect to the paired robot and move to the zero position */
robot.connect();
robot.resetToZero();

/* get the joint speed for joint 1 */
robot.getJointSpeed(ROBOT_JOINT1, speed);
printf("Joint1 speed = %.2lf degrees per second\n", speed);

/* set the joint speed for joint 1 to 90 degrees per second */
speed = 90;
robot.setJointSpeed(ROBOT_JOINT1, speed);

/* rotate joint 1 by 360 degrees */
robot.moveJoint(ROBOT_JOINT1, 360);

/* get the joint speed for joint 1 */
robot.getJointSpeed(ROBOT_JOINT1, speed);
printf("Joint1 speed = %.2lf degrees per second\n", speed);
