z = [1, 2, 5];      % Zaehlerpolynom: Z(s) = s^2 + 2s + 5
n = [3, 5];         % Nennerpolynom:  N(s) = 3s + 5
T_t = 0.5           % Totzeit
roots(n)            % Nullstellen
G = (tf(z, n, 'inputdelay', T_t))   % UTF (mit Totzeit)
bode(G)             % Bode-Plot des Systems
margin(G)           % Bode mit Stabilitaets- und Phasenreserve
bodemag(G)          % Amplitudengang des Systems

nyquist(G)          % Nyquist-Plot des Systems