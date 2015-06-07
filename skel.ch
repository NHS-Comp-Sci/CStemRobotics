#include <linkbot.h>

void setMotorSpeeds();

// Create new linkbot-I
CLinkbotI robot

// Connect to bot
robot.connect();

setMotorSpeeds(1);


void setMotorSpeeds(double sp)
{
    // robot.setJointSpeedRatios(sp, sp, NaN); // For L bot
    robot.setJointSpeedRatios(sp, NaN, sp);
}
