clc;
clear all;
load('IdentStat.mat')
u = DataStatW(:,1);
N = length(u)
yw = DataStatW(:,2);
yc = DataStatC(:,2);

%% parameter identification
phi = [ones(N,1) 1./u 1./u.^2 1./u.^3]; %capital phi
Pw = (phi'*phi)\phi'*yw % with white noise
Pc = (phi'*phi)\phi'*yc % with color noise

%% estimated values and errors generated
yhatw = phi*Pw;
yhatc = phi*Pc;
erw = yw - yhatw;
erc = yc - yhatc;

%% covariance and confidence level 
d = length(Pw)
sigma2w = (1/(N-d))*sum(erw.^2)
sigma2c = (1/(N-d))*sum(erc.^2)
covpw1 = sigma2w*inv(phi'*phi)
covpw2 = sigma2w./(phi'*phi)
covpc1 = sigma2c./(phi'*phi)
covpc2 = sigma2c*inv(phi'*phi)

