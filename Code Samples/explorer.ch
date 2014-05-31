/* File: explorer.ch
 * An explorer using four Linkbot-Is and one Linkbot-L for a gripper to pick up
 * a highlighter pen.
 * 1) Diameters of two wheels are of 4" inches.
 * 2) Numbers 1, 2 and 3 indicate joints.
 * 3) 1 caster is attached at the front of the cubic connector.
 * 4) Before running the program explorer.ch, the explorer should be set 
 *    in the initial position shown in explorer.jpg, 
 *    In this starting position:
 *      a) robot3 has joint 1 positioned at -12 degrees and 
 *         joint 3 positioned at 12 degrees.
 *      b) robot4 has joint 1 positioned at -90 degrees and joint 3 positioned 
 *         at 90 degrees.
 *      c) All other robots have their joints initially set in the zero position.
 * 5) When mounting the gripper, make sure joint 1 is in zero position
 *    if the gripper is closed
 * 6) Front View in its initial configuration
 *                          |--| gripper 
 * gripper attached here -> |__|
 *                           --  <- simple connector
 *                         3|--|1 robot4
 *                         ||__|| 
 *     bridge connector -> |    | <- bridge connector
 *                         ||--|| 
 *                         3|__|1 robot3
 *                     1|--|----|--|3
 *           robot2  -> |__||  ||__| <- robot1
 *                            ^
 *                            |
 *                     cubic connector
 *
 */

#include <linkbot.h>
CLinkbotI robot1, robot2, robot3, robot4;
CLinkbotL gripper;
double gripperAngleNew, gripperAngleOld;

robot1.connect();
robot2.connect();
robot3.connect();
robot4.connect();
gripper.connect();

robot1.setJointMovementStateNB(ROBOT_JOINT1, ROBOT_HOLD);
robot2.setJointMovementStateNB(ROBOT_JOINT3, ROBOT_HOLD);

/* Initial position */
robot1.resetToZeroNB();
robot2.resetToZeroNB();
robot3.moveToNB(-12, NaN, 12);
robot4.moveToNB(-90, NaN, 90);
gripper.resetToZeroNB();
robot1.moveWait();
robot2.moveWait();
robot3.moveWait();
robot4.moveWait();
gripper.moveWait();

/* move forward */
robot1.moveNB(0, NaN, 360);
robot2.moveNB(-360, NaN, 0);
robot1.moveWait();
robot2.moveWait();

/* turn left */
robot1.moveNB(0, NaN, -235); 
robot2.moveNB(-235, NaN, 0); 
robot1.moveWait();
robot2.moveWait();

/* move forward */
robot1.moveNB(0, NaN, 360);
robot2.moveNB(-360, NaN, 0);
robot1.moveWait();
robot2.moveWait();

/* initialize the variables */
gripperAngleOld = 0;
gripperAngleNew = -90;

/* Open the gripper by moving joint1 to -90 and joint2 to 90 */
gripper.moveTo(gripperAngleNew, 90, NaN);

/* arm ready */
robot3.moveToNB(70, NaN, -70); 
robot4.moveToNB(-10, NaN, 10);
robot3.moveWait();
robot4.moveWait();

/* Close the gripper to grab an object */
while(abs(gripperAngleNew - gripperAngleOld) > 0.1) {
    gripperAngleOld = gripperAngleNew;    // update the old position
    gripper.moveJointNB(ROBOT_JOINT1, 8); // move 8 degrees
    gripper.delaySeconds(1);              // closing for 1 second
    gripper.getJointAngle(ROBOT_JOINT1, gripperAngleNew);// get the new position
}
gripper.moveJointNB(ROBOT_JOINT1, 8); // try to move another 8 degrees
gripper.delaySeconds(1);              // closing for 1 second
gripper.setJointMovementStateNB(ROBOT_JOINT1, ROBOT_HOLD); // hold the object

/* lift the arm */
robot3.setJointSafetyAngle(50);
robot3.moveToNB(-12, NaN, 12); 
robot4.moveToNB(-90, NaN, 90);  
robot3.moveWait();
robot4.moveWait();

/* move backward */
robot1.moveNB(0, NaN, -360);
robot2.moveNB(360, NaN, 0);
robot1.moveWait();
robot2.moveWait();

/* turn right */
robot1.moveNB(0, NaN, 235); 
robot2.moveNB(235, NaN, 0);
robot1.moveWait();
robot2.moveWait();

/* move backward */
robot1.moveNB(0, NaN, -360);
robot2.moveNB(360, NaN, 0);
robot1.moveWait();
robot2.moveWait();

robot3.setExitState(ROBOT_HOLD);   // robot3 holds joints 
gripper.setExitState(ROBOT_HOLD);  // gripper holds the object
