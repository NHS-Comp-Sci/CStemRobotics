/* Challenge 10: Stupid chess
 */
 
#include <linkbot.h>
CLinkbotI robot;
robot.connect();
double radius = 1.75;

double speed = 100;
robot.setJointSpeeds(speed, NaN, speed);

// Rough estimates, will tweak after testing\
int d1 = 2;
double d2 = 9;
int d3 = 4;

double track_width = 4;
double angle = 55;

robot.moveDistance(d1, radius);
robot.turnLeft(angle, radius, track_width);

robot.moveDistance(d2, radius);
robot.moveDistance(-d3, radius);
robot.turnLeft(90, radius, track_width);
robot.moveDistance(6, radius);

