/* File: settwowheelrobotspeed.ch 
   Set the speed of a two-wheel robot. */
#include <linkbot.h>
CLinkbotI robot;
double radius = 1.75; // the radius of the two wheels of the robot in inches
double speed = 3;     // the speed in 2.5 inches per second for a two-wheel robot
double distance = 5;  // the distance in 3 inches to move forward

/* connect to the paired robot and move to the zero position */
robot.connect();
robot.resetToZero();

/* set the speed for a two-wheel robot to 2.5 inches per second */
robot.setTwoWheelRobotSpeed(speed, radius);

/* move the robot 360 degrees forward for joints 1 and 3 */
robot.moveForward(360);

/* move the robot 360 degrees backward for joints 1 and 3 */
robot.moveBackward(360);

/* move forward for 'distance' inches */
robot.moveDistance(distance, radius);
