%3.1
% Material properties and geometry
E = 0.209e9;  % kN/m^2
I = 1.5796e-2;  % m^4
h = 3.6;  % meters
m = 500;  % kN/(m/s^2)

% mass and stiffness matrices
M = diag([2*m, 2*m, m]);
k = 12*E*I/(h^3);
K = [k+k, -k, 0; -k, k+k, -k; 0, -k, k];

%Damping matrix
C = zeros(3);

% eigenvalues and eigenvectors
[modeshape, fr] = eig(K, M)
frequencies = sqrt(diag(fr))/(2*pi)

% Normalization and display of mode shapes
modeshapen = modeshape ./ modeshape(3,:);
display(modeshapen);

% Plot mode shapes
Height = [0, 3.6, 7.2, 10.8];
for i = 1:3
    subplot(1,3,i);
    plot([0; modeshapen(:,i)], Height);
    ylabel('Height of structure (m)');
    title(['Modeshape ', num2str(i)]);
end






