G = 2;
T = 5;
H = tf([G],[T 1], 'InputDelay', 5);
[y,t]=step(10*H);
plot(t,y);