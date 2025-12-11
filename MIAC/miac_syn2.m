function wp = miac_syn2(in)
global alpha

T = in(1);
k = in(2);
w1 = (5*T-alpha)/(k*alpha);
w2 = 1/k;
w3 = T/k;
wp = [w1 w2 w3]';