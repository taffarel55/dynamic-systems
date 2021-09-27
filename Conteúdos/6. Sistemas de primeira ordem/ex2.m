G = 1;
T = 4;
H = tf([G],[T 1], 'InputDelay', 3.5);
[y,t]=step(6*H);
plot(t,y);