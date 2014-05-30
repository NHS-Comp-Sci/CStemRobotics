// Robot - cube - robot
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

turn(80);
moveForward(30);
moveForward(-30);
turn(-90);
moveForward(15);
turn(80);
moveForward(30);
moveForward(-30);
turn(-90);
moveForward(15);
turn(80);
moveForward(30);

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
