% Given data
data = [45,47,48,50,52,54,55,55,57,58,60,62,65,65,66,68,70,72,75,78,78,80,85];
% Calculate mean, median, and mode 
mean_value = mean(data); 
median_value = median(data); 
mode_value = mode(data); 
% Display the results
disp(['Mean: ', num2str(mean_value)]); 
disp(['Median: ', num2str(median_value)]); 
disp(['Mode: ', num2str(mode_value)]); % Plot the data 
figure; 
hold on; 
% Plot the data points
plot(data, 'bo-', 'DisplayName', 'Data'); 
% Plot mean 
yline(mean_value, 'r--', 'LineWidth', 2, 'DisplayName', ['Mean: ', num2str(mean_value)]);
% Plot median
yline(median_value, 'g-.', 'LineWidth', 2, 'DisplayName', ['Median: ', num2str(median_value)]); 
% Plot mode 
yline(mode_value, 'm-', 'LineWidth', 2, 'DisplayName', ['Mode: ', num2str(mode_value)]); % Enhance plot 
title('Mean, Median, and Mode of Data'); 
xlabel('Index'); 
ylabel('Value'); 
legend show; 
grid on; 
hold off;