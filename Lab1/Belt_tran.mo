model Belt_tran
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(
    Placement(transformation(origin = {-92, 0}, extent = {{-8, -8}, {8, 8}}), iconTransformation(origin = {-86, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 2e-5)  annotation(
    Placement(transformation(origin = {-52, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {-52, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 4.24e-7)  annotation(
    Placement(transformation(origin = {-72, 0}, extent = {{-8, -8}, {8, 8}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 1.63e-4)  annotation(
    Placement(transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 5e-5)  annotation(
    Placement(transformation(origin = {80, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed1 annotation(
    Placement(transformation(origin = {80, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(
    Placement(transformation(origin = {92, 0}, extent = {{-8, -8}, {8, 8}}), iconTransformation(origin = {92, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.IdealGearR2T idealGearR2T annotation(
    Placement(transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 6.67e4)  annotation(
    Placement(transformation(origin = {2, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.IdealGearR2T idealGearR2T1 annotation(
    Placement(transformation(origin = {32, 0}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
equation
  connect(flange_a, inertia.flange_a) annotation(
    Line(points = {{-92, 0}, {-80, 0}}));
  connect(inertia.flange_b, damper.flange_a) annotation(
    Line(points = {{-64, 0}, {-52, 0}}));
  connect(damper.flange_b, fixed.flange) annotation(
    Line(points = {{-52, -20}, {-52, -26}}));
  connect(spring1.flange_b, idealGearR2T1.flangeT) annotation(
    Line(points = {{12, 0}, {22, 0}}, color = {0, 127, 0}));
  connect(idealGearR2T1.flangeR, inertia1.flange_a) annotation(
    Line(points = {{42, 0}, {50, 0}}));
  connect(inertia1.flange_b, damper1.flange_a) annotation(
    Line(points = {{70, 0}, {80, 0}}));
  connect(damper1.flange_b, fixed1.flange) annotation(
    Line(points = {{80, -20}, {80, -26}}));
  connect(damper1.flange_a, flange_b) annotation(
    Line(points = {{80, 0}, {92, 0}}));
  connect(damper.flange_a, idealGearR2T.flangeR) annotation(
    Line(points = {{-52, 0}, {-40, 0}}));
  connect(idealGearR2T.flangeT, spring1.flange_a) annotation(
    Line(points = {{-20, 0}, {-8, 0}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Belt_tran;
