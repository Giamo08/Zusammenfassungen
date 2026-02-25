A = [0 1; 1 5];             % Matrix A (2x2)
B = [0; 1];                 % Matrix B (2x1)
C = [1, 0]                  % Matrix C (1x2)
Q = [2 0; 0 1];             % Matrix Q (2x2)
R = [1];                    % Matrix R (1x1)
p = [-5 -10];               % vorgegebene Pole

% Verstarkungsmatrix der Rueckfuehrung mit LQR-Methode
K = lqr(A, B, Q, R) 

% Verstarkungsmatrix der Rueckfuehrung mit Polplatzierung
K = place(A, B, p)

% Verstarkungsmatrix des Beobachters mit LQR-Methode
H = lqr(A', C', Q, R)'

% Verstarkungsmatrix des Beobachters mit Polplatzierung
H = place(A', C', p)