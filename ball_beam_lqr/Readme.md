
# 1.1 Ball beam math

![image info](./image/ball_beam_lqr_10.png)

![image info](./image/ball_beam_lqr_06.png)

![image info](./image/ball_beam_lqr_00.png)

![image info](./image/ball_beam_lqr_01.png)


# 1.2 LQR

![image info](./image/ball_beam_lqr_02.png)


# 1.3 LQR loop control

![image info](./image/ball_beam_lqr_03.png)

# 1.4 Riccati solution

![image info](./image/ball_beam_lqr_04.png)

ARE : Algebraic Riccati Equation (P_dot = 0)

![image info](./image/ball_beam_lqr_05.png)

![image info](./image/ball_beam_lqr_07.png)

![image info](./image/ball_beam_lqr_08.png)

```python
import numpy as np
from control.matlab import *

A = np.array([[0, 1, 0, 0],
              [0, 0, -6.7915, 0],
              [0, 0, 0, 1],
              [-19.62, 0, 0, 0]])
B = np.array([[0, 0, 0, 20]]).T
Q = np.array([[1, 0, 0, 0],
              [0, 1, 0, 0],
              [0, 0, 1, 0],
              [0, 0, 0, 1]])
R = np.array([10])
K, S, E = lqr(A, B, Q, R)   

print("K = ", K)
# print(S)
# print(E)
```
```cmd
K  = [[-2.01170898 -0.92234359  2.4732972   0.58934686]]
```

```
u(t) = -K.x(t)
```

![image info](./image/ball_beam_lqr_09.png)