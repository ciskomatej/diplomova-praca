k1=1;
k2=1;
d1=10;
d2=-1;
s1=3;
s2=0.5;
d3=-2;
s3=1;
a=k1*(d2-s2)
b=2*k1*(d3-s3)
c=-k2*(s1-d1)
d=-k2*(s2-d2)
e=-k2*(s3-d3)
pe=(-d/e+sqrt((d/e)^2-4*c/e) )/2
%%y''=ayy'+by'+c+dy+ey^2
%%a<0,b<0, c moze byt aj aj, d>0, e>0

syms y(t)
[V] = odeToVectorField(diff(y, 2) == a*diff(y)+b*y*diff(y)+c+d*y+e*y^2);
M = matlabFunction(V,'vars', {'t','Y'});
sol = ode45(M,[0 20],[2 0]);
fplot(@(x)deval(sol,x,1), [0, 5]);


