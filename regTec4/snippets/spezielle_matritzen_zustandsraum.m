syms t                      % t als symbolischer Wert
A = [0 6; 1 5];             % Matrix A (2x2)
B = [1; 4];                 % Matrix B (2x1)
C = [2; 3];                 % Matrix C (1x2)

SteuerMat = ctrb(A, B);     % Steuerbarkeitsmatrix
BeobachtMat = obsv(A, C);   % Beobachtbarkeitsmatrix
expm(A*t)                   % Transitionsmatrix