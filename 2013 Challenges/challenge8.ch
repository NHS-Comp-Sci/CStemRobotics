/* Challenge 8 */
#include <linkbot.h>
#include <chplot.h>
CLinkbotI robot1, robot2;
double speed1=2.4, speed2=3; // speeds of robots in inches per second
double radius1=1.75, radius2=1.75; // the radii of two wheels of robot1 and robot2
double offset=0;             // the offset for the distance of robot1
double time1=10, time2=8;    // motion time in seconds for robot1 and robot2
double delaytime=2;          // delay time for robot2 
double timeInterval = 0.1;   // time interval in 0.1 second 
int numDataPoints1, numDataPoints2; // number of data points recorded
robotRecordData_t timedata1, distances1; // recorded time and distances for robot1
robotRecordData_t timedata2, distances2; // recorded time and distances for robot2
CPlot plot;                  // plotting class

/* connect to robots and move to the zero position at the same time. */
robot1.connect();        robot2.connect();
robot1.resetToZeroNB();  robot2.resetToZeroNB();
robot1.moveWait();       robot2.moveWait();

/* set the speeds for robot1 and robot2 */
robot1.setTwoWheelRobotSpeed(speed1, radius1);
robot2.setTwoWheelRobotSpeed(speed2, radius2);

/* set the offset of the distance for robot1 */
robot1.recordDistanceOffset(offset);

/* disable record data shift and begin recording time and distance */
robot1.disableRecordDataShift();
robot2.disableRecordDataShift();
robot1.recordDistanceBegin(ROBOT_JOINT1, timedata1, distances1, radius1, timeInterval);
robot2.recordDistanceBegin(ROBOT_JOINT1, timedata2, distances2, radius2, timeInterval);

/* robot1 moves first for a total of 'time1' seconds.
 'delaytime' seconds later, robot2 moves for 'time2' seconds while robot1 also moves */
robot1.setMovementStateTimeNB(ROBOT_FORWARD, NaN, ROBOT_FORWARD, time1);
robot2.delaySeconds(delaytime);
robot2.setMovementStateTime(ROBOT_FORWARD, NaN, ROBOT_FORWARD, time2);
robot1.moveWait();  // wait till robot1 moved 'time1' seconds
robot1.recordDistanceEnd(ROBOT_JOINT1, numDataPoints1);
robot2.recordDistanceEnd(ROBOT_JOINT1, numDataPoints2);

/* plot the data */
plot.mathCoord();
plot.title("Distances versus time");
plot.label(PLOT_AXIS_X, "Time (seconds)");
plot.label(PLOT_AXIS_Y, "Distances (inches)");
plot.data2DCurve(timedata1, distances1, numDataPoints1);
plot.legend("Distance for robot 1", 0);
plot.data2DCurve(timedata2, distances2, numDataPoints2);
plot.legend("Distance for robot 2", 1);
plot.plotting();
