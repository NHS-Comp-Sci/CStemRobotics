#include <linkbot.h>
CLinkbotI robot1, robot2, robot3;
robot1.connect();
robot2.connect();
robot3.connect();

robot1.setMovementStateTime(ROBOT_NEUTRAL, NaN,ROBOT_NEUTRAL, 1);
robot2.setMovementStateTime(ROBOT_NEUTRAL, NaN,ROBOT_NEUTRAL, 1);
robot3.setMovementStateTime(ROBOT_NEUTRAL, NaN,ROBOT_NEUTRAL, 1);
