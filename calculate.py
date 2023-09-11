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

print(K)
# print(S)
# print(E)
