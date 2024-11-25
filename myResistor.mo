model myResistor
extends Modelica.Electrical.Analog.Interfaces.OnePort;
parameter Modelica.Units.SI.Resistance R1 = 1, R2 =1;
equation
v = R1*i + R2*i^2;
end myResistor;
