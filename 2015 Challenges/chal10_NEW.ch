#include <linkbot.h>
// Create new linkbot-I
CLinkbotI robot;

// Connect to bot
robot.connect();
robot.resetToZero();

robot.setJointSpeedRatios(1, NaN, 1);

while (1==1) {
    robot.move(70, 0, 0);
    robot.resetToZero();
}
