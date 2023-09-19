
% F 2140 40 mm, Precious Metal Brushes CLL, 4 Watt

Ra = 40;
La = 5.02*10^-3;
Jm = 24.5*10^-7;
Bm = 0.0;
Kt = 55.2*10^-3;
Ke = 173;

Kp = 1;
Ki = 10;

ts = [Jm Bm];
ms = [La*Jm (La*Bm+Ra*Jm) (Kt*Ke+Ra*Bm)];

sys = tf(ts,ms)
step(sys)
