% k1=1;
% k2=3;
% d1=7;
% d2=-0.1;
% s1=3;
% s2=0.01;
% d3=-0.2;
% s3=-0.1;

k1=3;
k2=1;

d1=2;
d2=-1;
d3=-0.2

s1=2;
s2=1.5;
s3=-0.1



eq1 = 1 - k1*(d3-s3);
eq2= k2 * (s3 - d3) - k1 * (d2-s2);
eq3=k2*(s2-d2);
eq4 = -k2*(s1-d1);

alpha= eq2 / eq1
beta= eq3 / eq1
gamma= eq4 / eq1

p0=20;
p1=0.1;


Dval = alpha^2 - 4*beta
D = sqrt(Dval);


if Dval > 0
    o=1
    c2= ( (D*(gamma - p0*beta) + p1 * beta + ((p0*beta*alpha) / 2) - ( ( gamma*alpha) / 2) ) / ( - sqrt(alpha^2-4*beta)) );
    c1= p0*beta-c2-gamma;
    p = @(t) (c1./beta) * exp( (-(alpha./2) + D/2 ) * t) + (c2./beta) * exp( (-(alpha./2) - D/2 ) * t) + gamma / beta;
   
    fplot(p, [0 5])
     ylim([0 30])
else  
    o=2
    c1=beta*(p0 - (gamma/beta));
    c2=beta*(p1 - ( (alpha/2) * (p0 - (gamma / beta)) ) );
    p = @(t) (c1./beta) * exp ( -(alpha./2) * t) * cos( (sqrt(4*beta-alpha^2)./2 *t) ) + (c2/beta) * exp ( -(alpha./2) * t) * sin( (sqrt(4*beta-alpha^2)./2 *t) ) + gamma/beta;
    fplot(p, [0 100]);
    ylim([15 45])
end