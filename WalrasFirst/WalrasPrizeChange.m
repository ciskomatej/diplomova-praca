clear all;
s1=1;
s2=0.5;
d1=300;
d2=-0.4;
s3=5;
d3=-7;
k1=5;
t=0:0.001:50;
start_prizes=[ 10 100 300 600];
alpha=1+k1*(s3-d3);
beta=k1*(s2-d2);
pe=( (d1-s1) / (s2-d2) )

p=@(p0) pe + (p0-pe)*exp(-(beta/alpha)*t);

n = length(start_prizes);

for i = 1 : n
    plot(t, p(start_prizes(i)))
    hold on;
end    

legend('p(0)=10', 'p(0)=100', 'p(0)=300', 'p(0)=600', 'NorthEastOutside')
xlabel('Čas (t)')
ylabel('Cena (p)')