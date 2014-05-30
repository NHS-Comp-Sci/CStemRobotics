/* File: turn.ch 
   Turn left and turn right */
#include <linkbot.h>
CLinkbotI robot;
double radius = 1.75;      // radius of 1.75 inches 
double trackwidth = 3.69;  // the track width, the distance between two wheels

/* connect to the paired robot and move to the zero position */
robot.connect();
robot.resetToZero();

robot.moveForward(360);
robot.turnRight(90, radius, trackwidth);
robot.moveForward(360);
robot.turnLeft(90, radius, trackwidth);
robot.moveForward(360);
