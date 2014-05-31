#include <linkbot.h>

CLinkbotI bot1;
bot1.connect();

double radius = 1.75;
double track_width = 4;
int sp = 240;

bot1.setJointSpeeds(sp, NaN, sp);

bot1.moveDistance(20, radius);
bot1.turnRight(90, radius, track_width);
bot1.moveDistance(20, radius);
bot1.turnRight(90, radius, track_width);
bot1.moveDistance(20, radius);
bot1.turnRight(90, radius, track_width);
bot1.moveDistance(20, radius);

