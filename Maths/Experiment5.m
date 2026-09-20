% Define the function f(x) = sin(x)
f = @(x) sin(x);
% Parameters
L = 10;              % Length of the interval [-L, L]
N = 2^10;            % Number of points for numerical integration and FFT
% Define the x values and the function f(x)
x = linspace(-L, L, N);
y = f(x);
% Compute the Fourier Transform using FFT
dk = 2*pi / (2*L);           % Frequency step size
k = (-N/2:N/2-1) * dk;       % Frequency values
F = fftshift(fft(y)) * (2*L/N);   % Perform FFT and adjust scaling
% Plotting
figure;
subplot(2,1,1);
plot(x, y, 'b-', 'LineWidth', 2);
title('f(x) = sin(x)');
xlabel('x');
ylabel('f(x)');
grid on;
subplot(2,1,2);
plot(k, abs(F), 'r-', 'LineWidth', 2);
title('Fourier Transform of f(x)');
xlabel('k');
ylabel('|F(k)|');
grid on;
% Adjust the x-axis limits to focus on central frequencies
xlim([-10 10]);
% Overall title
sgtitle('Fourier Transform of f(x) = sin(x)');