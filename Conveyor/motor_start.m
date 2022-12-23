function [] = motor_start(motor)
    motor.start();

    pause(1);

    motor.power = motor.power * -1;
    motor.start();
    motor.waitFor();
    motor.power = motor.power * -1;
end

