function out = rls2 (in)

global P2 lam pls2

y = in(1)
y1 = in(3);
y2 = in(2);
u2 = in(4);

phi2 = [-y1 -y2 u2]';
P2 = (P2 - (P2*(phi2*phi2')*P2)/(lam+phi2'*P2*phi2))/lam;
kn2 = P2*phi2;
yhat = phi2'*pls2;
epsn = y - yhat
pls2 = pls2 + kn2*epsn
Pt = trace(P2);

out = pls2

return