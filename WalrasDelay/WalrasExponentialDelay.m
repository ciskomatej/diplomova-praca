k1=1;

d1=3;
d2=-2;

s1=-7;
s2=1;

alpha=k1*(d1-s1)
beta=k1*(d2-s2)
c=-alpha/beta
pe=log(-alpha/beta)


sol = dde23(@exam1f,1,1.18,[0 15]);
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
k1=1;
d1=3;
d2=-2;

s1=-7;
s2=1;

ylag1 = Z(:,1);

yp = k1*(d1-s1+d2*exp(y(1))-s2*exp(y(1)));
     
end
