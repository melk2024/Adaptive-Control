function out = rls (in)
global pls P
 
y = in(1)
y1 = in(3);
y2 = in(2);
u2 = in(4);

phi = [-y1 -y2 u2]';

P = P - (P*(phi*phi')*P)/(1+phi'*P*phi)
kn = P*phi;
yhat = phi'*pls;
epsn = y - yhat
pls = pls + kn*epsn;
Pt = trace(P)

out = pls

return