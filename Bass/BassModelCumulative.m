clear all;
syms t;
p=0.03;
q=0.38;
p1=0.04;
q1=0.5;
p2=0.06;
q2=0.55;
p3=0.4;
q3=0.2;

k=@(p,q) exp(-t*(p+q))

F1= (1 - k(p,q)) / ( 1 + (q/p)*k(p,q));
F2= (1 - k(p1,q1)) / ( 1 + (q1/p1)*k(p1,q1));
F3= (1 - k(p2,q2)) / ( 1 + (q2/p2)*k(p2,q2));
F4= (1 - k(p3,q3)) / ( 1 + (q3/p3)*k(p3,q3));

m=4000;
m2=3000;
m3=2000;
m4=1000;

fplot(m*F1, [0 20], 'r');
hold on;
fplot(m2*F2, [0 20], 'b');
fplot(m3*F3, [0 20], 'y');
fplot(m4*F4, [0 20], 'g');

title('$$s(t)=\frac{1-e^{-t(p+q)}}{1+\frac{q}{p}e^{-t(p+q)}}*m(t)$$','interpreter','latex')

legend('p=0.03, q=0.38','p=0.04, q= 0.5','p=0.06, q=0.55','p=0.4, q=0.2', 'Location','northwest')
xlabel('Čas (t)')
ylabel('N')