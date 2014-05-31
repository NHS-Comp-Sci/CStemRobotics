// Robot - cube - robot
// Rear on top, curve forwards
// 3 - 1 - box - 3 - 1

#include <linkbot.h>
void moveForward(double dist);
void turn(double angle);

// Create new linkbot-I
CLinkbotI l, r;

double radius = 1.75;

// Connect to bot
l.connect();
r.connect();

int sp = 240;

l.setJointSpeeds(sp, NaN, sp);
r.setJointSpeeds(sp, NaN, sp);

// Movement stuff
moveForward(-45);
moveForward(10);
turn(-120);
moveForward(-20);


void moveForward(double dist)
{
    // Move forward
    double angle = distance2angle(radius, dist);
    l.moveNB(0, NaN, angle);
    r.move(-angle, NaN, 0);
    l.delaySeconds(1);

}

void turn(double angle)
{
    l.moveNB(0, NaN, angle * 3);
    r.move(angle * 3, NaN, 0);
    l.delaySeconds(1);
}
