#include <linkbot.h>;
CLinkbotI a,b,c,d;
double radius = 1.75;
double plotx = 33;
double ploty = 26;
a.connect();
b.connect();
c.connect();
d.connect();


double axdist = plotx-1;
double bxdist = 84-plotx-1;
double cxdist = plotx-1;
double dxdist = 84-plotx-1;

double aydist = ploty-4.5;
double bydist = ploty-4.5;
double cydist = 42-ploty-4.5;
double dydist = 42-ploty-4.5;

double adist = aydist;
double bdist = bydist;
double cdist = cydist;
double ddist = dydist;



a.moveDistanceNB(axdist,radius);
b.moveDistanceNB(bxdist, radius);
c.moveDistanceNB(cxdist, radius);
d.moveDistance(dxdist, radius);

a.setJointSpeedRatios(0.5, NaN, 0.5);
b.setJointSpeedRatios(0.5*(bdist/adist), NaN, 0.5*(bdist/adist));
c.setJointSpeedRatios(0.5*(cdist/adist), NaN, 0.5*(cdist/adist));
d.setJointSpeedRatios(0.5*(ddist/adist), NaN, 0.5*(ddist/adist));

a.turnLeft (95,radius, 3.5);
b.turnRight(95,radius, 3.5);
c.turnRight(95,radius, 3.5);
d.turnLeft(95,radius, 3.5);

a.moveDistanceNB(aydist, radius);
b.moveDistanceNB(bydist,radius);
c.moveDistanceNB(cydist, radius);
d.moveDistance(dydist, radius);












