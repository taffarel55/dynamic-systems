Ra = 0.2;
La = 1e-4;
K  = 2.528e-6;
Kb = 5.5e-2;
Jm = 4.214e-7;
Jl = 1.854e-4;
fm = 0;
fl = 1.7e-3;
n  = 1/10;

J = n*n*Jl + Jm;
f = n*n*fl + fm;

s = tf('s');

G1 = K/(La*s + Ra);
G2 = 1/(J*s+f);
G3 = Kb;

M = feedback(G1*G2,G3);

N = 10;
Kp = 1;
Kd = 0.2;

MF = feedback(M*(Kp+Kd*s),1) 