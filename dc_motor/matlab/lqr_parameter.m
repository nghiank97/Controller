Ra = 2.32;
La = 0.238*10^-3;
Jm = 10.8*10^-7;
Bm = 0.0;
Kt = 2.85*10^-3;
Ke = 1/(408*0.10472);

A = [-Ra/La -Ke/La; Kt/Jm -Bm/Jm]
B = [1/La; 0]
C = [0 1]
D = [0]

sys = ss(A,B,C,D)
step(sys)
hold

Q = diag([1 1]);
R = 1;
[K,P,e] = lqr(A,B,Q,R)
Ac = A-B*K;
step(Ac,B,C,D)
