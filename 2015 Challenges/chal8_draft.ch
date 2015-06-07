#include <linkbot.h>
#include <math.h>
// Create new linkbot-I
CLinkbotI robot;

    printf("its all torvalds\n");


// Connect to bot
robot.connect();

if (robot.isConnected()) {
        
    printf("its all ogre");
        
    double radius = 1.75;
    double angle = 90;
    double trackwidth = 3.5;
    double startX = 0;
    double startY = 40;
    int ball = 1;
    double ballX = 23;
    double ballY = 32;
    int dest = 1;
    double destX;
    double destY;
    
    if (ball == 1){
        ballX = 33;
        ballY = 37;
    } else if (ball == 2){
        ballX = 42;
        ballY = 43;
    } else if (ball == 3){
        ballX = 42;
        ballY = 20;
    } else if (ball == 4){
        ballX = 33;
        ballY = 15;
    } else if (ball == 5){
        ballX = 23;
        ballY = 14;
    } else if (ball == 6){
        ballX = 23;
        ballY = 32;
    }
    robot.moveDistance(ballX, radius);
    robot.turnRight(90, 3.5, 1.75);
    robot.moveDistance(ballY, radius);
} else {
    printf("rms :(\n");
}
