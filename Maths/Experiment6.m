% Define the function f(x) = @(x)1 ./sqrt(x)
f = @(x)1 ./sqrt(x);
% Define the range for the Laplace variable s
s = linspace(0.1, 10, 100);
% Allocate space for the Laplace transform values
F_s = zeros(size(s));
% Numerical integration using MATLAB's integral function
for i = 1:length(s)
    F_s(i) = integral(@(x) exp(-s(i)*x) .* f(x), 0, Inf);
end
% Plotting the Laplace transform
figure;
plot(s, F_s, 'b-', 'LineWidth', 2);
title('Laplace Transform of f(x) = sin(x)');
xlabel('s');
ylabel('F(s)');
grid on;