close all
clear all
SIZE=200;
syms t X(t) p q
p=0.03;
q=0.38;
p1=0.04;
q1=0.5;
p2=0.06;
q2=0.55;
alpha=0.2;
beta=0.3;
gamma=0.2;
Q=@(t)t/4;
m=4000;

x=@(t,q)1-alpha*gamma+beta*Q(t)
z=int(x(t,q))
X=@(t,p)t/10

C=@(p,q)log(p)/(p+q)-X(0,p)

F=@(p,q)(1-p*exp( -(X(t,p)+C(p,q)) * (p+q)) ) / ( 1 + q*exp ( -(X(t,p)+C(p,q))*(p+q) ) )

fplot(F(p,q)*m, [0 SIZE])
hold on
fplot(F(p1,q1)*m, [0 SIZE])
fplot(F(p2,q2)*m, [0 SIZE])
legend('p=0.03, q=0.38','p=0.04, q= 0.5','p=0.06, q=0.55', 'NorthEastOutside')
xlabel('Čas (t)')
ylabel('N')

%fplot(F(p3,q3)*m, [0 50])




