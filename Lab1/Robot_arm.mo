model Robot_arm
  Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a annotation(
    Placement(transformation(origin = {-72, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 5.5)  annotation(
    Placement(transformation(origin = {-28, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Damper damper(d = 25)  annotation(
    Placement(transformation(origin = {-52, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {-52, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(transformation(origin = {8, 0},extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = -54)  annotation(
    Placement(transformation(origin = {52, 0}, extent = {{10, -10}, {-10, 10}})));
equation
  connect(force.f, const.y) annotation(
    Line(points = {{20, 0}, {42, 0}}, color = {0, 0, 127}));
  connect(force.flange, mass.flange_b) annotation(
    Line(points = {{-2, 0}, {-18, 0}}, color = {0, 127, 0}));
  connect(mass.flange_a, damper.flange_a) annotation(
    Line(points = {{-38, 0}, {-52, 0}}, color = {0, 127, 0}));
  connect(damper.flange_a, flange_a) annotation(
    Line(points = {{-52, 0}, {-72, 0}}, color = {0, 127, 0}));
  connect(damper.flange_b, fixed.flange) annotation(
    Line(points = {{-52, -20}, {-52, -30}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Robot_arm;
