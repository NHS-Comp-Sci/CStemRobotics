#include <linkbot.h>

void moveForward(double dist);
void turn(double angle);

CLinkBotI robot1;
robot1.connect();

CLinkBotI robot2;
robot2.connect();

CLinkBotI robot3;
robot3.connect();

CLinkBotI robot4;
robot4.connect();

double radius = 1.75;     // inches
double trackwidth = 3.5;  // inches
double speed = 25;        // in/sec
// double speed = 240;       // degrees/sec

robot1.setTwoWheelRobotSpeed(speed, radius);
robot2.setTwoWheelRobotSpeed(speed, radius);
robot3.setTwoWheelRobotSpeed(speed, radius);
robot4.setTwoWheelRobotSpeed(speed, radius);
//robot1.setJointSpeeds(speed, NaN, speed);
//robot2.setJointSpeeds(speed, NaN, speed);
//robot3.setJointSpeeds(speed, NaN, speed);
//robot4.setJointSpeeds(speed, NaN, speed);


// Relax everything at end
robot1.setExitState(ROBOT_NEUTRAL);
robot2.setExitState(ROBOT_NEUTRAL);
robot3.setExitState(ROBOT_NEUTRAL);
robot4.setExitState(ROBOT_NEUTRAL);

void moveForward(double dist)
{
    double angle = distance2angle(radius, dist);
    // TODO: implement
}

void turn(double angle)
{
    // TODO: implement
}
