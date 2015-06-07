#include <linkbot.h>
CLinkbotI robot;

/* connect to the paired robot and move to the zero position */
robot.connect();

// start
// small, middle, big wheel
robot.setJointSpeedRatios(.5, NaN, .5 / 1.15 );
robot.move(90, NaN, -80);

// correct
robot.move(0, NaN, -70);

//Straighaway
robot.setJointSpeedRatios(.5, NaN, .5 / 1.15 );
robot.move(605, NaN, -540);

robot.move(90, NaN, 0);

robot.setJointSpeedRatios(.72, NaN, .5/1.5);
robot.move(900, NaN, -450);
