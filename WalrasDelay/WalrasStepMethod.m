y=@(t)320 - 270*exp(-2*t);
alpha = y(1)

A = -270;
B = -320;
b_lomeno_a = -( (370 - y(1)) / (-1) );

C = A - ( (b_lomeno_a + B) / exp(-2) );

y1=@(t) C * exp(-2*t) + (370 - y(1) );

fplot(50, [-1,0]);
hold on

fplot(y,[0 1]);
fplot(y1,[1 2],'g');
xlim([-1 3])
ylim([0 300])

xlabel('čas t');
ylabel('p(t)');

legend('Historická funkcia', 'Prvý krok', 'Druhý krok', 'NorthEastOutside')

