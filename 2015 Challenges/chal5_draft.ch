#include <linkbot.h>
// Create new linkbot-I
CLinkbotI r1, r2, r3;

r1.connect();
r3.connect();
r2.connect();

double sp = 0.6;
r1.setJointSpeeds(sp, NaN, sp);
r2.setJointSpeeds(sp, NaN, sp);
r3.setJointSpeeds(sp, NaN, sp);

double radius = 1.75;

// MOVEMENT 1
double dist = 7; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);

// LED CHANGE GREEN
int r, g, b;
r = 0;
g = 255;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);

// zhuan 300 left
double angle = -300;
double trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);

// move 3 
dist = 3; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);

// W8
r1.delaySeconds(6);

// turn blu 4 wat
r = 0;
g = 0;
b = 255;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// zhuan 300 left
angle = -300;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);

// move 7 
dist = 7; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);


// turn red 4 wat
r = 255;
g = 0;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);

// zhuan 540 left
angle = 540;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);

// move 7 
dist = 7; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);


// turn ORAGE 4 wat
r = 255;
g = 165;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);

// zhuan 90 RIGHT
angle = 90;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);


// Follow circle
sp = 0.6;
double multiplier = 1.2;
r1.setJointSpeeds(sp, NaN, sp * multiplier);
r2.setJointSpeeds(sp, NaN, sp * multiplier);
r3.setJointSpeeds(sp, NaN, sp * multiplier);

angle = 700;
r1.move(angle, NaN, angle * multiplier);
r2.moveNB(angle, NaN, angle * multiplier);
r3.moveNB(angle, NaN, angle * multiplier);


// turn YELLOW 4 wat
r = 255;
g = 255;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// zhuan 90 RIGHT
angle = 90;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);



// move 7 
dist = 7; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);


// turn WHITE 4 wat
r = 255;
g = 255;
b = 255;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// zhuan 90 RIGHT
angle = 360;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);
