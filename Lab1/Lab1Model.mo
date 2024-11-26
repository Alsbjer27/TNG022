model Lab1Model
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {54, -56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 0.0000338)  annotation(
    Placement(transformation(origin = {80, -18}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Mechanics.Rotational.Components.Damper damper annotation(
    Placement(transformation(origin = {54, -28}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-26, -48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 0.35)  annotation(
    Placement(transformation(origin = {-44, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L(displayUnit = "mH") = 0.00339)  annotation(
    Placement(transformation(origin = {-10, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf annotation(
    Placement(transformation(origin = {28, -18}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage annotation(
    Placement(transformation(origin = {-80, -20}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
equation
  connect(resistor.p, constantVoltage.p) annotation(
    Line(points = {{-54, 2}, {-80, 2}, {-80, -10}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-34, 2}, {-20, 2}}, color = {0, 0, 255}));
  connect(inductor.n, emf.p) annotation(
    Line(points = {{0, 2}, {28, 2}, {28, -8}}, color = {0, 0, 255}));
  connect(emf.n, ground.p) annotation(
    Line(points = {{28, -28}, {29, -28}, {29, -38}, {-26, -38}}, color = {0, 0, 255}));
  connect(ground.p, constantVoltage.n) annotation(
    Line(points = {{-26, -38}, {-80, -38}, {-80, -30}}, color = {0, 0, 255}));
  connect(emf.flange, damper.flange_a) annotation(
    Line(points = {{38, -18}, {54, -18}}));
  connect(damper.flange_a, inertia.flange_b) annotation(
    Line(points = {{54, -18}, {70, -18}}));
  connect(damper.flange_b, fixed.flange) annotation(
    Line(points = {{54, -38}, {54, -56}}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Lab1Model;
