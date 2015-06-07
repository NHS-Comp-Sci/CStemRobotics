#include <linkbot.h>
#include <iostream>

using namespace std;
// Create new linkbot-I
CLinkbotI rL;

// Connect to bot
rL.connect();

cout << "foo" << endl;

rL.setJointSpeedRatios(.5, NaN, .1); // Set all the joint speeds

double a1 = 800;
rL.move(a1, NaN, -a1);

