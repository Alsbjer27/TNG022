model Lab2Models
  Lab1Model lab1Model annotation(
    Placement(transformation(origin = {-29, 3}, extent = {{-7, -7}, {7, 7}})));
  cur_reg cur_reg1 annotation(
    Placement(transformation(origin = {-68, 2}, extent = {{-6, -6}, {6, 6}})));
  Modelica.Blocks.Sources.Constant const(k = 0.7) annotation(
    Placement(transformation(origin = {-93, 3}, extent = {{-5, -5}, {5, 5}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-49, 1}, extent = {{5, -5}, {-5, 5}}, rotation = 90)));
equation
  connect(const.y, cur_reg1.u1) annotation(
    Line(points = {{-87.5, 3}, {-73, 3}}, color = {0, 0, 127}));
  connect(cur_reg1.y, signalVoltage.v) annotation(
    Line(points = {{-62, 1}, {-55, 1}}, color = {0, 0, 127}));
  connect(cur_reg1.u, lab1Model.y) annotation(
    Line(points = {{-72, 0}, {-80, 0}, {-80, -16}, {-31, -16}, {-31, -1}}, color = {0, 0, 127}));
  connect(signalVoltage.p, lab1Model.pin_p) annotation(
    Line(points = {{-48, 6}, {-40, 6}, {-40, 4}, {-36, 4}}, color = {0, 0, 255}));
  connect(signalVoltage.n, lab1Model.pin_n) annotation(
    Line(points = {{-48, -4}, {-40, -4}, {-40, 0}, {-36, 0}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram);
end Lab2Models;
