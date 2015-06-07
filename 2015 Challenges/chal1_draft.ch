#include <linkbot.h>

CLinkbotI botA, botB;

botA.connect();
botB.connect();

int i;


botA.moveForeverNB();

double x, y, z;
for (i = 0; i < 20; ++i) {
    botA.getAccelerometerData(x, y, z);
    printf("%f.2, %f.2, %f.2\n", x, y, z);
    
    botA.delaySeconds(2);

}
