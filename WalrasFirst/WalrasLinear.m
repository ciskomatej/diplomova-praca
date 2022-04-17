clear all;
s1=1;
s2=0.5;
d1=300;
d2=-0.4;
k1=3;
t=0:0.001:2;
start_prizes=[ 10 100 300 600];

pe=( (d1-s1) / (s2-d2) );
a=k1*(s2-d2);
p=@(p0) pe + (p0-pe)*exp(-a*t);

n = length(start_prizes);

for i = 1 : n
    plot(t, p(start_prizes(i)))
    hold on;
end    

legend('p(0)=10', 'p(0)=100', 'p(0)=300', 'p(0)=600', 'NorthEastOutside')
xlabel('Čas (t)')
ylabel('Cena (p)')