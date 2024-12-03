model Screw_tran
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(
    Placement(transformation(origin = {-64, 0}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-90, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1.45e-5)  annotation(
    Placement(transformation(origin = {-36, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 7.5e4)  annotation(
    Placement(transformation(origin = {32, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.IdealGearR2T idealGearR2T annotation(
    Placement(transformation(origin = {-2, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b annotation(
    Placement(transformation(origin = {62, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {26, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(flange_a, inertia.flange_a) annotation(
    Line(points = {{-64, 0}, {-46, 0}}));
  connect(inertia.flange_b, idealGearR2T.flangeR) annotation(
    Line(points = {{-26, 0}, {-12, 0}}));
  connect(idealGearR2T.flangeT, spring.flange_a) annotation(
    Line(points = {{8, 0}, {22, 0}}, color = {0, 127, 0}));
  connect(spring.flange_b, flange_b) annotation(
    Line(points = {{42, 0}, {62, 0}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Screw_tran;
