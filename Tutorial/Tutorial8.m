m = 450;
k = 220000;
b = 3750;
F = 4500;

tf = 3;
h = 0.1;
i = 1;
g = 9.81;
Fg = F * g;

for t = h:h:tf
    a(i) = (F/m) - g - (k/m)*y(i) - (b/m)*v(i);
    v(i + 1) = v(i) + h * a(i);
    y(i + 1) = y(i) + h * v(i);
    i = i + 1;
end
t = 0:h:tf;
plot(t,y);



