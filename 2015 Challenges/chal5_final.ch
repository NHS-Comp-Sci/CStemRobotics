#include <linkbot.h>
// Create new linkbot-I
CLinkbotI r1, r2, r3;

r1.connect();
r3.connect();
r2.connect();

double sp = 0.6;
r1.setJointSpeedRatios(sp, NaN, sp);
r2.setJointSpeedRatios(sp, NaN, sp);
r3.setJointSpeedRatios(sp, NaN, sp);

double radius = 1.75;

// LED CHANGE PURPLE
int r, g, b;
r = 128;
g = 0;
b = 128;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// MOVEMENT 1
double dist = 5; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);

// LED CHANGE GREEN
r, g, b;
r = 0;
g = 255;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);

// turn 300 left
double angle = -335;
double trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);

// move 3 
dist = 5; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);

// W8
r1.delaySeconds(6);

// turn blu
r = 0;
g = 0;
b = 255;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// turn 300 left
angle = -335;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);

// move 5
dist = 5; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);


// turn red
r = 255;
g = 0;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);

// turn 540 left
angle = 600;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);

// move 5 
dist = 5; // inches
r1.moveDistanceNB(dist, radius);
r2.moveDistanceNB(dist, radius);
r3.moveDistance(dist, radius);


// turn ORAGE
r = 255;
g = 165;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);

// turn 90 RIGHT
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


// turn YELLOW
r = 255;
g = 255;
b = 0;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// turn 90 RIGHT
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


// turn WHITE
r = 255;
g = 255;
b = 255;
r1.setColorRGB(r, g, b);
r2.setColorRGB(r, g, b);
r3.setColorRGB(r, g, b);


// turn 90 RIGHT
angle = 360;
trackwidth = 3.5;
r1.turnRightNB(angle, radius, trackwidth);
r2.turnRightNB(angle, radius, trackwidth);
r3.turnRight(angle, radius, trackwidth);
