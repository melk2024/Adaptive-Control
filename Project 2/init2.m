clear;
clearvars;
global c10 Td Tp Tend a12 a22 b22 P2 lam pls2
c10 = 0.7;
Td = 100;
Tp = 0.1; % the value of Tp has direct influence on run time and visibility of result
Tend = 200;
a12 = 0;
a22 = 0;
b22 = 0;
lam = 0.99;
pls2 = [a12 a22 b22]';
P2 = eye(3)*1000;



