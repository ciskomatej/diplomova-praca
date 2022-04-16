k1=1;

d1=3;
d2=-2;

s1=-10;
s2=1;

a=k1*(d1-s1)
b=k1*(d2-s2)



tspan = [0 1];
p0 = 1;
r = b + a*exp(-p0)
C = -log(b + a*exp(-p0))/a

eq1 = @(t) -b + exp(-a*(t+C));
pe=log(a/-b)
p=@(t) -log( eq1(t) / (a) );

p(0)
p(0.01)

fplot(p, tspan);
