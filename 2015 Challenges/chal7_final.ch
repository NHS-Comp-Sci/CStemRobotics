#include <iostream>
#include <linkbot.h>
#include <chplot.h>

using namespace std;

// Create new linkbot-I
CLinkbotI robot;
robot.connect();

double radius = 1.75;
double speed;

// random
double time = 15;
double distance = 30;

double wait_time = 2;

double indv_time = time / 3;
double dist_short = (distance - 12) / 3;
double dist_med = dist_short + 4;
double dist_long = dist_med + 4;


// GRAPHING
robotRecordData_t timedata, dist;
double time_interval = 0.; // Time between readings (min of 0.05)
int shift_data = 1; // 1 = data is shifted (default), 0 = data is not shifted
int num_data_points;
CPlot plot;

robot.recordDistanceBegin(ROBOT_JOINT1, timedata, dist, time_interval, shift_data);

// ACTUAL MOVEMENT
cout << "FIRST SEG" << endl;
speed = dist_long/ indv_time;
robot.setTwoWheelRobotSpeed(speed, radius);
robot.moveDistance(dist_long, radius);

robot.delaySeconds(wait_time);

cout << "SECOND SEG" << endl;
speed = dist_med/ indv_time;
robot.setTwoWheelRobotSpeed(speed, radius);
robot.moveDistance(dist_med, radius);

robot.delaySeconds(wait_time);

cout << "THIRD SEG" << endl;
speed = dist_short/ indv_time;
robot.setTwoWheelRobotSpeed(speed, radius);
robot.moveDistance(dist_short, radius);

robot.recordDistanceEnd(ROBOT_JOINT1, num_data_points);

plot.mathCoord();
plot.title("Distance vs time");
plot.label(PLOT_AXIS_X, "Time (s)");
plot.label(PLOT_AXIS_Y, "Distance (in)");
plot.data2DCurve(timedata, dist, num_data_points);
plot.plotting();
