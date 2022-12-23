b.motorA.power = -20;
b.motorD.power = -20;

b.motorA.start();
b.motorD.start();

pause(5);

b.motorD.stop();
b.motorA.stop();

