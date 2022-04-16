k1=2;

d1=9;
d2=-1;
d3=-9;

s1=0.05;
s2=10;
s3=-8;

a=k1*(d1-s1)
b=k1*(d2-s2)
c=k1*(d3-s3)
alpha=b/(2*c)
pe=-alpha+sqrt(alpha^2-(a/c))

sol = dde23(@exam1f,1,1,[0 10]);
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

d1=9;
d2=-1;
d3=-9;

s1=0.05;
s2=10;
s3=-8;

ylag1 = Z(:,1);

%yp = k1*(d1-s1+d2*y(1)-s2*y(1)+d3*y(1)^2-s3*ylag1^2);
 yp=    
end
