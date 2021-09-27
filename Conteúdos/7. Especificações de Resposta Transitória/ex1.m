z = [0.1 0.5 0.8];

G1 = tf(1,[1 2*z(1) 1]);
stepinfo(G1,'SettlingTimeThreshold',0.01)
G2 = tf(1,[1 2*z(2) 1]);
stepinfo(G2,'SettlingTimeThreshold',0.01)
G3 = tf(1,[1 2*z(3) 1]);
stepinfo(G3,'SettlingTimeThreshold',0.01)