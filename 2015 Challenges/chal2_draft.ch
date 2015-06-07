#include <iostream>
#include <linkbot.h>
#include <chplot.h>

using namespace std;

// Create new linkbot-I
CLinkbotI robot;
robot.connect();

double radius = 1.75;

double sp = .3;
robot.setJointSpeedRatios(sp, NaN, sp); // Set all the joint speed ratios

int ang = 130;
robot.move(ang, NaN, ang);


robot.delaySeconds(10);


ang = -130;
robot.move(ang, NaN, ang);

