#include <linkbot.h>

void moveForward(double dist);
void otherMove(double dist);

CLinkbotI bot1, bot2, bot3, bot4;

bot1.connect();
bot2.connect();
bot3.connect();
bot4.connect();

double radius = 1.75;
int sp = 240;

bot1.setJointSpeeds(sp, NaN, sp);
bot2.setJointSpeeds(sp, NaN, sp);
bot3.setJointSpeeds(sp, NaN, sp);
bot4.setJointSpeeds(sp, NaN, sp);

moveForward(20);

void moveForward(double dist)
{
    // Move forward
    double angle = distance2angle(radius, dist);
    bot1.moveNB(0, NaN, angle);
    bot2.moveNB(0, NaN, -angle);
    bot3.moveNB(0, NaN, angle);
    bot4.moveNB(0, NaN, -angle);
    
    bot1.delaySeconds(1);
}

void otherMove(double dist)
{
    double angle = distance2angle(radius, dist);
    bot3.moveNB(0, NaN, angle);
    bot4.moveNB(0, NaN, -angle);
  
}
