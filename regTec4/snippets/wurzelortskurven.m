z = [1, 5, 1];  % Zaehlerpolynom Z(s) = s^2 + 5s + 1
n = [1, 4];     % Nennerpolynom N(s) = s + 4
G = tf(z, n)    % UTF offener Regelkreis
rlocus(G)       % Wurzelortskurve generieren