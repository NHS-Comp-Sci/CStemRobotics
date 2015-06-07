#include <linkbot.h>

int nBots = 3;

CLinkbotI bots[nBots];

int i;
for (i = 0; i < nBots; ++i){
    bots[i].connect();
    bots[i].resetToZero();
    bots[i].setExitState(ROBOT_NEUTRAL);
}
