close all
clear all
syms t X(t) p q
p=0.03;
q=0.38;
p1=0.04;
q1=0.5;
p2=0.06;
q2=0.55;
m=50000;

Q=@(t)1000-33.33*t;
A=@(t)500+20*t;  
beta=1;
beta_2=-0.5;

X=@(t)t+log(Q(t)/Q(0))*beta+log(A(t)/A(0))*beta_2;

C=@(p,q)log(p)/(p+q)-X(0);

F=@(p,q)(1-p*exp( -(X(t)+C(p,q)) * (p+q)) ) / ( 1 + q*exp ( -(X(t)+C(p,q))*(p+q) ) );

f=@(F)diff(F);

fplot(f(F(p,q))*m, [0 20])
hold on
fplot(f(F(p1,q1))*m, [0 20])
fplot(f(F(p2,q2))*m, [0 20])
legend('p=0.03, q=0.38','p=0.04, q= 0.5','p=0.06, q=0.55', 'NorthEastOutside')
xlabel('Čas (t)')
ylabel('N')