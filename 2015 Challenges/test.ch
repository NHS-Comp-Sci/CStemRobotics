#include <linkbot.h>

CLinkbotI robot, robo, rob;
robot.connect();
robo.connect();
rob.connect();

robot.resetToZero();
robo.resetToZero();
rob.resetToZero();

double radius = 1.75;
double trackwidth = 3.5;
double s1 = 90;
double s3 = 90;
double m1 = 120;
double m3 = 120;
double h1 = 120;
double h3 = 120;
robot.setJointSpeeds(s1, NaN, s3);
robo.setJointSpeeds(m1, NaN, m3);
rob.setJointSpeeds(h1, NaN, h3);

robot.move(360, NaN, -360);

robo.moveNB(90, NaN, -90);
robot.move(360, NaN, -360);

robo.moveNB(90, NaN, -90);
robot.move(360, NaN, -360);

robo.moveNB(90, NaN, -90);
robot.move(360, NaN, -360);

rob.moveNB(90, NaN, -90);
robo.moveNB(90, NaN, -90);
robot.moveNB(90, NaN, -90);
rob.setBuzzerFrequencyOn(440);
delay(1);
rob.setBuzzerFrequencyOff();
robot.move(300, NaN, -300);

robo.moveNB(90, NaN, -90);
robot.move(360, NaN, -360);

robo.moveNB(90, NaN, -90);
robot.move(360, NaN, -360);

robo.moveNB(90, NaN, -90);
robot.move(360, NaN, -360);

rob.moveNB(90, NaN, -90);
robo.moveNB(90, NaN, -90);
robot.moveNB(90, NaN, -90);
rob.setBuzzerFrequencyOn(440);
delay(1);
rob.setBuzzerFrequencyOff();
robot.move(300, NaN, -300);

