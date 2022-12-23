testValues = [];
tachoValues = [];
b.motorA.resetTachoCount();

while a == 1
    tachoValues = [tachoValues, b.motorA.tachoCount*-1];
    testValues = [testValues, b.sensor1.value];
end