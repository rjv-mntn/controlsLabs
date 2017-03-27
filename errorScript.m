rms1 = rms(errors.signals.values(1,4000:10000));
rms2 = rms(errors.signals.values(2,4000:10000));

peak1 = max(abs(max(errors.signals.values(1,4000:10000))),...
    abs(min(errors.signals.values(1,4000:10000))));
peak2 = max(abs(max(errors.signals.values(2,4000:10000))),...
    abs(min(errors.signals.values(2,4000:10000))));

a1 = 0.15;  % link 1 length
a2 = 0.15;  % link 2 length
m1 = 0.092;  % link 1 mass  
m2 = 0.077; % link 2 mas
r01 = 0.062; % link 1 center of mass
r12 = 0.036; % link 2 COM
I1 = 0.64e-3;  % link 1 inertia
I2 = 0.30e-3;  % link 2 inertia
Jm1 = 0.65e-6; % motor inertias
Jm2 = 0.65e-6;
b1 = 3.1e-6; % viscous damping constants
b2 = 3.1e-6;
c1 = 0.0001; % coulomb friction constants
c2 = 0.0001;
g = 9.8; % gravitational constant
N1 = 70; % gear ratios
N2 = 70;


alpha_1 = N1^2*Jm1 + I1 + m2*a1^2;
alpha_2 = r12*m2;
alpha_3 = r01*m1 + a1*m2;
alpha_4 = N2^2*Jm2 + I2;
