clear all
close all;

k1=2;
k2=10;
d1=3;
d2=-0.05;
s1=2;
s2=0.05;

%a=-0.2;
%b=-1;
%c=10;
a=k1*(d2-s2)
b=k2*(d2-s2)
c=k2*(d1-s1)
logs=-c/b

pe=log(logs)
syms y(t)
%%y''=ay'exp(y)+b*exp(y)+c
%%a<0,b<0, c>0
[V] = odeToVectorField(diff(y, 2) == a*diff(y)*exp(y)+b*exp(y)+c);
M = matlabFunction(V,'vars', {'t','Y'});
sol = ode45(M,[0 15],[2 0]);
fplot(@(x)deval(sol,x,1), [0, 15])

log(0.1)
