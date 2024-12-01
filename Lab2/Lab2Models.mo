model Lab2Models
  Lab1Model lab1Model annotation(
    Placement(transformation(origin = {14, 0}, extent = {{-10, -10}, {10, 10}})));
  cur_reg cur_reg1 annotation(
    Placement(transformation(origin = {-54, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 0.7)  annotation(
    Placement(transformation(origin = {-88, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-22, 0}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
equation
  connect(const.y, cur_reg1.u1) annotation(
    Line(points = {{-77, 4}, {-63, 4}}, color = {0, 0, 127}));
  connect(cur_reg1.u, lab1Model.y) annotation(
    Line(points = {{-62, -0.5}, {-72, -0.5}, {-72, -20}, {11, -20}, {11, -6}}, color = {0, 0, 127}));
  connect(cur_reg1.y, signalVoltage.v) annotation(
    Line(points = {{-44, 0}, {-34, 0}}, color = {0, 0, 127}));
  connect(signalVoltage.n, lab1Model.pin_n) annotation(
    Line(points = {{-22, -10}, {-8, -10}, {-8, -6}, {6, -6}}, color = {0, 0, 255}));
  connect(signalVoltage.p, lab1Model.pin_p) annotation(
    Line(points = {{-22, 10}, {-8, 10}, {-8, 0}, {6, 0}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Lab2Models;
