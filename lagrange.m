%Projekt 2 - nr.20 interpolacja Lagrange'a Marcin Piech 191679 EiT5
close all; clc;

xi=[15; 48; 57; 76];
yi=[0.211; 0.372; 0.460; 0.499];
xk=[5; 28; 47; 71];

L1=(xk(1)-xi(2))*(xk(1)-xi(3))*(xk(1)-xi(4))/(xi(1)-xi(2))/(xi(1)-xi(3))/(xi(1)-xi(4));
L2=(xk(1)-xi(1))*(xk(1)-xi(3))*(xk(1)-xi(4))/(xi(2)-xi(1))/(xi(2)-xi(3))/(xi(2)-xi(4));
L3=(xk(1)-xi(1))*(xk(1)-xi(2))*(xk(1)-xi(4))/(xi(3)-xi(1))/(xi(3)-xi(2))/(xi(3)-xi(4));
L4=(xk(1)-xi(1))*(xk(1)-xi(2))*(xk(1)-xi(3))/(xi(4)-xi(1))/(xi(4)-xi(2))/(xi(4)-xi(3));
Ln=yi(1)*L1+yi(2)*L2+yi(3)*L3+yi(4)*L4;

L11=(xk(2)-xi(2))*(xk(2)-xi(3))*(xk(2)-xi(4))/(xi(1)-xi(2))/(xi(1)-xi(3))/(xi(1)-xi(4));
L22=(xk(2)-xi(1))*(xk(2)-xi(3))*(xk(2)-xi(4))/(xi(2)-xi(1))/(xi(2)-xi(3))/(xi(2)-xi(4));
L33=(xk(2)-xi(1))*(xk(2)-xi(2))*(xk(2)-xi(4))/(xi(3)-xi(1))/(xi(3)-xi(2))/(xi(3)-xi(4));
L44=(xk(2)-xi(1))*(xk(2)-xi(2))*(xk(2)-xi(3))/(xi(4)-xi(1))/(xi(4)-xi(2))/(xi(4)-xi(3));
Lnn=yi(1)*L11+yi(2)*L22+yi(3)*L33+yi(4)*L44;

L111=(xk(3)-xi(2))*(xk(3)-xi(3))*(xk(3)-xi(4))/(xi(1)-xi(2))/(xi(1)-xi(3))/(xi(1)-xi(4));
L222=(xk(3)-xi(1))*(xk(3)-xi(3))*(xk(3)-xi(4))/(xi(2)-xi(1))/(xi(2)-xi(3))/(xi(2)-xi(4));
L333=(xk(3)-xi(1))*(xk(3)-xi(2))*(xk(3)-xi(4))/(xi(3)-xi(1))/(xi(3)-xi(2))/(xi(3)-xi(4));
L444=(xk(3)-xi(1))*(xk(3)-xi(2))*(xk(3)-xi(3))/(xi(4)-xi(1))/(xi(4)-xi(2))/(xi(4)-xi(3));
Lnnn=yi(1)*L111+yi(2)*L222+yi(3)*L333+yi(4)*L444;

L1111=(xk(4)-xi(2))*(xk(4)-xi(3))*(xk(4)-xi(4))/(xi(1)-xi(2))/(xi(1)-xi(3))/(xi(1)-xi(4));
L2222=(xk(4)-xi(1))*(xk(4)-xi(3))*(xk(4)-xi(4))/(xi(2)-xi(1))/(xi(2)-xi(3))/(xi(2)-xi(4));
L3333=(xk(4)-xi(1))*(xk(4)-xi(2))*(xk(4)-xi(4))/(xi(3)-xi(1))/(xi(3)-xi(2))/(xi(3)-xi(4));
L4444=(xk(4)-xi(1))*(xk(4)-xi(2))*(xk(4)-xi(3))/(xi(4)-xi(1))/(xi(4)-xi(2))/(xi(4)-xi(3));
Lnnnn=yi(1)*L1111+yi(2)*L2222+yi(3)*L3333+yi(4)*L4444;

yk=[Ln, Lnn, Lnnn, Lnnnn];
xw=[5, 15, 28, 47, 48, 57, 71, 76];
yw=[Ln, yi(1), Lnn, Lnnn, yi(2), yi(3), Lnnnn, yi(4)];

plot(xw, yw)
