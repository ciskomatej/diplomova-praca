sol = dde23(@ddex1de,[1, 0.2],@ddex1hist,[0, 5]);

%p'(t)=k1(d1-s1+d2p(t)-s2p(t-\tau);

k1=2;
d1=400;
d2=-1;
s1=30;
s2=1;

pe=(s1-d1)/(d2-s2)

sol = dde23(@exam1f,1,50,[0 30]);
figure
plot(sol.x,sol.y);
hold on
yline(pe, 'red');
xlabel('čas t');
ylabel('p(t)');

legend('Cena','Rovnovážna cena')
%-----------------------------------------------------------------------
function yp = exam1f(t,y,Z)
%EXAM1F  The derivative function for the Example 1 of the DDE Tutorial.
k1=2;
d1=400;
d2=-1;
d3=-0.1
s1=30;
s2=1;
s3=0.2
ylag1 = Z(:,1);
k1*(s3-d3)

yp = k1*(d1-s1+d2*y(1)-s2*ylag1)/(1-k1*(s3-d3));
     
end