% Fourier Series of a sine Function
clear; clc;
% Define the period of the sine Function
L = pi;
% Number of Fourier terms to calculate
N = 10;
% Define the sine function
F = @(x) sign(sin(x));
% Initialize Fourier coefficients
a0 = 0;
an = zeros(1, N);
bn = zeros(1, N);
% Calculate a0 (the average value)
a0 = (1 / (2 * L)) * integral(@(x) F(x), -L, L);
% Calculate an and bn coefficients
for n = 1:N
    an(n) = (1 / L) * integral(@(x) F(x) .* cos(n * pi * x / L), -L, L);
    bn(n) = (1 / L) * integral(@(x) F(x) .* sin(n * pi * x / L), -L, L);
end
% Define the reconstructed function using Fourier series
FourierSeries = @(x) a0;
for n = 1:N
    FourierSeries = @(x) FourierSeries(x) + an(n) * cos(n * pi * x / L) + bn(n) * sin(n * pi * x / L);
end
% Plot the original function and the Fourier series approximation
x = linspace(-L, L, 1000);
figure;
plot(x, F(x), 'r', 'LineWidth', 1.5); % Original function
hold on;
plot(x, FourierSeries(x), 'b--', 'LineWidth', 1.5); % Fourier series approximation
legend('Original Function', 'Fourier Series Approximation');
title('Fourier Series Approximation of a Sine Function');
xlabel('x');
ylabel('F(x)');
grid on;