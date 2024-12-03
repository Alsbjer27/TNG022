model Lab2Models
  Lab1Model lab1Model annotation(
    Placement(transformation(origin = {-15, 5}, extent = {{-7, -7}, {7, 7}})));
  cur_reg cur_reg1 annotation(
    Placement(transformation(origin = {-54, 4}, extent = {{-6, -6}, {6, 6}})));
  Modelica.Blocks.Sources.Constant const(k = 0.7) annotation(
    Placement(transformation(origin = {-79, 5}, extent = {{-5, -5}, {5, 5}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-35, 3}, extent = {{5, -5}, {-5, 5}}, rotation = 90)));
  Belt_tran belt_tran annotation(
    Placement(transformation(origin = {12, 4}, extent = {{-8, -8}, {8, 8}})));
  Screw_tran screw_tran annotation(
    Placement(transformation(origin = {38, 4}, extent = {{-10, -10}, {10, 10}})));
  Robot_arm robot_arm annotation(
    Placement(transformation(origin = {72, 4}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(const.y, cur_reg1.u1) annotation(
    Line(points = {{-73.5, 5}, {-59, 5}}, color = {0, 0, 127}));
  connect(cur_reg1.y, signalVoltage.v) annotation(
    Line(points = {{-48.36, 2.68}, {-41.36, 2.68}}, color = {0, 0, 127}));
  connect(cur_reg1.u, lab1Model.y) annotation(
    Line(points = {{-58.86, 2.5}, {-66.86, 2.5}, {-66.86, -13.5}, {-17.86, -13.5}, {-17.86, 1.5}}, color = {0, 0, 127}));
  connect(signalVoltage.p, lab1Model.pin_p) annotation(
    Line(points = {{-35, 8}, {-27, 8}, {-27, 6}, {-23, 6}}, color = {0, 0, 255}));
  connect(signalVoltage.n, lab1Model.pin_n) annotation(
    Line(points = {{-35, -2}, {-27, -2}, {-27, 2}, {-23, 2}}, color = {0, 0, 255}));
  connect(lab1Model.flange_b, belt_tran.flange_a) annotation(
    Line(points = {{-9.4, 3.04}, {5.6, 3.04}}));
  connect(belt_tran.flange_b, screw_tran.flange_a) annotation(
    Line(points = {{19.36, 4}, {29.36, 4}}));
  connect(screw_tran.flange_b, robot_arm.flange_a) annotation(
    Line(points = {{40.6, 4}, {64.6, 4}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram);
end Lab2Models;
