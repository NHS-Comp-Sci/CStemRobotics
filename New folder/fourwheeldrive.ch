/* File name: fourwheeldrive.ch
 * Four wheel drive configuration with two Linkbot-Is
 *          Top view
 *          
 *           |----|
 *           |____| <- robot1 
 *            |--|
 *            |__| <- cubic connector
 *           |----|
 *           |____| <- robot2
 *
 * Note: attach wheels for two Linkbot-I's */
#include <linkbot.h>
#include <chplot.h>

CLinkbotI robot1, robot2;

robot1.connect();
robot2.connect();

robot1.resetToZero();
robot2.resetToZero();

/* move forward */
robot1.moveForwardNB(360);
robot2.moveBackwardNB(360);
robot1.moveWait();
robot2.moveWait();

/* move backward */
robot1.moveBackwardNB(360);
robot2.moveForwardNB(360);
robot1.moveWait();
robot2.moveWait();
