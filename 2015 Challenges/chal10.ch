#include <linkbot.h>;
CLinkbotI robot, robo, rob;
robot.connect();
robo.connect();
rob.connect();

robot.setJointSpeedRatios(1, NaN, 1);
rob.setJointSpeedRatios(1, NaN, 1);

robo.holdJoints();
robot.driveForwardNB(999999);
rob.driveForward(999999);
