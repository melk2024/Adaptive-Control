function phat = miac_rls2(in) 
global P pls

yf = in(1);
dyf = in(2);
uf = in(3);

phi = [-dyf uf]';
P = P - (P*(phi*phi')*P)/(1+phi'*P*phi);
kn = P*phi;
yhat = phi'*pls;
epsn = yf - yhat;
pls = pls + kn*epsn

phat = pls
