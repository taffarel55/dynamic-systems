close all;
G = tf([1],[2 1],'InputDelay', 3);
[y1, t] = step(G); 
plot(t, y1);
hold on;

G2 = pade(G, 1) ;
[y2, t] = step(G2)
plot(t,y2);

G3 = pade(G, 2);
[y3, t] = step(G3);
plot(t,y3);

legend('G1','G2','G3');

figure;
pade(3,2)

figure;
[num, den] = pade(3,2);
step(tf(num,den));

G = zpk([], -0.5, 1,'InputDelay', 3) 