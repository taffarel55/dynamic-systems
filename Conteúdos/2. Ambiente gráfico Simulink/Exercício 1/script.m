den=1.25*conv([1 1],[1 2]);
G = [ tf([1 -1],den); tf(-6,den) ]
ssG = ss(G)
[A,B,C,D]=ssdata(ssG)