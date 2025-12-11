function u = controller(in)
phat = in(1:3)
r = in(4)
x = in(5)
phi_xt = in(6)

global gx gr gphi

u = phat(1)*x + phat(2)*r - phat(3)*phi_xt