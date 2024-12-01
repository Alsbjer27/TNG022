model Lab1Model
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {30, -66}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 3.88e-5) annotation(
    Placement(transformation(origin = {54, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1.19e-4) annotation(
    Placement(transformation(origin = {30, -38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-52, -48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1.15) annotation(
    Placement(transformation(origin = {-60, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L(displayUnit = "mH") = 0.00339) annotation(
    Placement(transformation(origin = {-26, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf(k = 0.056) annotation(
    Placement(transformation(origin = {-4, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-88, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {-80, -38}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-90, -52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(
    Placement(transformation(origin = {80, -28}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-30, -38}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {-32, -62}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-30, -62}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-50, 2}, {-36, 2}}, color = {0, 0, 255}));
  connect(emf.flange, damper.flange_a) annotation(
    Line(points = {{6, -28}, {30, -28}}));
  connect(damper.flange_b, fixed.flange) annotation(
    Line(points = {{30, -48}, {30, -66}}));
  connect(damper.flange_a, inertia.flange_a) annotation(
    Line(points = {{30, -28}, {44, -28}}));
  connect(ground.p, pin_n) annotation(
    Line(points = {{-52, -38}, {-80, -38}}, color = {0, 0, 255}));
  connect(resistor.p, pin_p) annotation(
    Line(points = {{-70, 2}, {-80, 2}}, color = {0, 0, 255}));
  connect(emf.p, inductor.n) annotation(
    Line(points = {{-4, -18}, {-16, -18}, {-16, 2}}, color = {0, 0, 255}));
  connect(inertia.flange_b, flange_b) annotation(
    Line(points = {{64, -28}, {80, -28}}));
  connect(emf.n, currentSensor.p) annotation(
    Line(points = {{-4, -38}, {-20, -38}}, color = {0, 0, 255}));
  connect(ground.p, currentSensor.n) annotation(
    Line(points = {{-52, -38}, {-40, -38}}, color = {0, 0, 255}));
  connect(currentSensor.i, y) annotation(
    Line(points = {{-30, -48}, {-32, -48}, {-32, -62}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Lab1Model;
