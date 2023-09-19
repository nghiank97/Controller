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

ts = [Kt];
ms = [La*Jm (Jm*Ra+ La*Bm) (Ke*Kt+ Ra*Bm)];

speed_sys = tf(ts, ms)
step(speed_sys)
hold

% current_ts = [Jm Bm];
% current_ms = [La*Jm (Jm*Ra+ La*Bm) (Ke*Kt+ Ra*Bm)];
% current_sys = tf(current_ts, current_ms);
% step(current_sys)
% hold
