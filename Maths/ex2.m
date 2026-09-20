clc;
clear;
close all;
% Circuit parameters
R = 2;
L = 5;
V = 20;
% Differential equation
F = @(t,i) (V - R*i)/L;
% Initial condition
i0 = 0;
% Time interval
t = linspace(0,20,200);
% Solve using ode45
[tSol,iSol] = ode45(F,t,i0);
% Plot
plot(tSol,iSol,'b','LineWidth',2);
grid on;
xlabel('Time (s)');
ylabel('Current i(t) (A)');
title('Transient Current in RL Circuit');