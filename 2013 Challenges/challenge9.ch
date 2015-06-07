#include <linkbot.h>
CLinkbotI robot1, robot2, robot3;
robot1.connect();
robot2.connect();
robot3.connect();

double radius = 1.75;
double time = 5;
double distance =5.5;
robot1.setJointSpeeds(200, NaN, 200);
robot3.setJointSpeeds(200, NaN, 200);

//First movement
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_FORWARD, .9);
robot3.setMovementStateTime(ROBOT_FORWARD, NaN, ROBOT_HOLD, .9);
//First turn
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_BACKWARD, 1.4);
robot3.setMovementStateTime(ROBOT_FORWARD, NaN, ROBOT_HOLD, 1.4);
//Movement to ball
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_BACKWARD, distance);
robot3.setMovementStateTime(ROBOT_BACKWARD, NaN, ROBOT_HOLD, distance);
//Grab
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_HOLD, distance);
robot3.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_HOLD, distance);
robot2.setMovementStateTime(ROBOT_FORWARD, NaN, ROBOT_FORWARD, 4);
//Moving backwards
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_FORWARD, distance);
robot3.setMovementStateTime(ROBOT_FORWARD, NaN, ROBOT_HOLD, distance);
//Final turn
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_FORWARD, 1.4);
robot3.setMovementStateTime(ROBOT_BACKWARD, NaN, ROBOT_HOLD, 1.4);
//Movement to home
robot1.setMovementStateTimeNB(ROBOT_HOLD, NaN, ROBOT_BACKWARD, 1.1);
robot3.setMovementStateTime(ROBOT_BACKWARD, NaN, ROBOT_HOLD, 1.1);


//Final turn
//Final movement
