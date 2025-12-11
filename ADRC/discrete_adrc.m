function out = discrete_adrc(in)
global gamma_a La Ba
x = in(1:3)
y = in(4);
u = in(5);

x = gamma_a*x + La*y + Ba*u;

out = x
end

