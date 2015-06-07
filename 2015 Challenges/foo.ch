#include <linkbot.h>
#include <chplot.h>
#include <iostream>

using namespace std;

CLinkbotI bun, tort;

cout << "plotttttt";

bun.connect();
tort.connect();
cout << "plotttttt";

bun.resetToZero();
tort.resetToZero();

double time_interval = 0.1; // time interval for recording
int num_data_pts_bun; // data points recorded
int num_data_pts_tort; // data points recorded

cout << "plotttttt";

int shift_data = 1; 

robotRecordData_t timedata_bun, dist_bun; // store recorded time and angles
robotRecordData_t timedata_tort, dist_tort; // store recorded time and angles

CPlot plot;

cout << "plotttttt";

bun.setJointSpeedRatios(1, NaN, 1);
tort.setJointSpeedRatios(.5, NaN, .5);

cout << "FOO" << endl;

bun.recordDistanceBegin(ROBOT_JOINT1, timedata_bun, dist_bun, time_interval, shift_data);
tort.recordDistanceBegin(ROBOT_JOINT1, timedata_tort, dist_tort, time_interval, shift_data);

cout << "FOO1" << endl;

// MOVEMENT STUFFS
bun.moveForwardNB(1000);
tort.moveForward(1000);

cout << "FOO1.5" << endl;

bun.moveForwardNB(1000);
tort.moveForward(1000);

cout << "FOO2" << endl;

bun.moveWait();
tort.moveWait();

bun.recordDistanceEnd(ROBOT_JOINT1, num_data_pts_bun);
tort.recordDistanceEnd(ROBOT_JOINT1, num_data_pts_tort);

plot.mathCoord();
plot.title("Distance vs. Time");
plot.label(PLOT_AXIS_X, "time (s)");
plot.label(PLOT_AXIS_Y, "distance (m)");
plot.data2DCurve(timedata_bun, dist_bun, num_data_pts_bun);
plot.data2DCurve(timedata_tort, dist_tort, num_data_pts_tort);
plot.plotting();
