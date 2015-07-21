RLCRes = @(a,w_0,w) w./(4*w.^2*a^2+(w.^2-w_0^2).^2).^0.5;
CcplRes = @(a,w_0,w_1,w) RLCRes(a,w_0,w)+RLCRes(a,w_1,w);

R = 1e3;
L = 218e-3;
C = 360e-12;
C_1 = 639e-12;

alpha = R/L/2;
w_0 = (L*C)^-0.5;
w_flack = 1/L^0.5*(1/C+2/C_1)^0.5;

w_vec = 0:10:1e6;

figure
hold all
plot(freq*1e3*2*pi,ampA)
plot(w_vec,1e7*CcplRes(alpha,w_0,w_flack,w_vec))
plot(w_vec,1e7*RLCRes(alpha,w_0,w_vec))