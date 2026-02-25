z = [2, 1];         	% Zaehler: Z(s) = 2s + 1
n = [3, 5, 2];      	% Nenner: N(s) = 3s^2 + 5s + 2
sys_tf = tf(z,n)    	% transfer function Objekt (ausm.)
sys_zpk = zpk(sys_tf)	% transfer function Objekt (fakt.)
sys_ss = ss(sys_tf) 	% state space Objekt (ZRD)

[A, B, C, D] = ssdata(sys_tf)
[Z, P, K] = zpkdata(sys_tf, 'v')

[z, n] = ss2tf(A,B,C,D) % transfer function from matrices
(A,B,C,D) = tf2ss(z, n) % matrices from  transfer function