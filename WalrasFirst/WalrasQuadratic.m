k1=2;

d1=20;
d2=-1;
d3=-10;

s1=0.05;
s2=10;
s3=-8;
p0=5

a=k1*(d1-s1)
b=k1*(d2-s2)
c=k1*(d3-s3)

alpha=b/(2*c)
beta=sqrt(alpha^2-a/c)
gamma=2*c*beta;

C1=log( 1 - ((2*beta)/(p0+alpha+beta)) ) / gamma

p = @(t) 2*beta./(1-exp(gamma.*(t+C1))) - alpha - beta;
pe=beta-alpha
p(0)

fplot(p, [0 1])
syms p
func = a + b*p + c*p^2 == 0;
A = solve(func);






