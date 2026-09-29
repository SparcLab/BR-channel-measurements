clc
clear
close all
% Define the filename verbatim
filename = 'channel_variability_data.xls';  % put the xls file and the matlab script within the same folder

%% Sheet: different subject
sheetName = 'different subject';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: Along torso
sheetName = 'Along torso';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: ankle to ankle
sheetName = 'ankle to ankle';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: dev pos along torso
sheetName = 'dev pos along torso';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: electrode thicknes
sheetName = 'electrode thicknes';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: battery towards hand
sheetName = 'battery towards hand';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: battery towards arm
sheetName = 'battery towards arm';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: battery_60cmLoS
sheetName = 'battery_60cmLoS';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: battery_30cmLoS
sheetName = 'battery_30cmLoS';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: Rx ground
sheetName = 'Rx ground';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: touch modality opposite hand
sheetName = 'touch modality opposite hand';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: touch modality same hand
sheetName = 'touch modality same hand';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: extra ground
sheetName = 'extra ground';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: device height
sheetName = 'device height';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: dev pos opposite arm
sheetName = 'dev pos opposite arm';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: dev pos same arm
sheetName = 'dev pos same arm';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: dev position horizontal
sheetName = 'dev position horizontal';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: device posture horizontal
sheetName = 'device posture horizontal';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: horizontal posture sweep
sheetName = 'horizontal posture sweep';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: vertical posture sweep
sheetName = 'vertical posture sweep';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: statistical analysis
sheetName = 'statistical analysis';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:3:(width(data) - 2)
    y = data{:, j}; pe_min = abs(data{:, j+1}); pe_max = abs(data{:, j+2});
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay error bars at the original measurement points
    errorbar(x, y, pe_min, pe_max, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: gnd size simulation
sheetName = 'gnd size simulation';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: device height simulation
sheetName = 'device height simulation';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: Tx battery simulation
sheetName = 'Tx battery simulation';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: Rx battery simulation
sheetName = 'Rx battery simulation';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: arm radius
sheetName = 'arm radius';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: subject height
sheetName = 'subject height';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: torso radius wrist worn
sheetName = 'torso radius wrist worn';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: arm length
sheetName = 'arm length';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: torso radius near torso
sheetName = 'torso radius near torso';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: device on torso
sheetName = 'device on torso';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: electrode thickness simulation
sheetName = 'electrode thickness simulation';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: battery_angle_60cm simulation
sheetName = 'battery_angle_60cm simulation';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;


%% Sheet: electrode conductivity simulati
sheetName = 'electrode conductivity simulati';
data = readtable(filename, 'Sheet', sheetName, 'VariableNamingRule', 'preserve');
figure('Name', sheetName, 'NumberTitle', 'off'); hold on; grid on;
x = data{:, 1}; x_interp = min(x):1:max(x); x_label = data.Properties.VariableNames{1};

for j = 2:width(data)
    y = data{:, j};
    y_interp = interp1(x, y, x_interp, 'spline');
    y_label = strrep(data.Properties.VariableNames{j}, '_', ' ');
    
    % Plot the interpolated line
    p = plot(x_interp, y_interp, '-', 'LineWidth', 1.5, 'DisplayName', y_label);
    
    % Overlay original measurement points without error bars
    plot(x, y, 'o', 'Color', p.Color, 'LineWidth', 1.5, 'MarkerSize', 4, 'HandleVisibility', 'off');
end

xlabel('Frequency (MHz)'); ylabel('Channel Gain (dB)'); title(['Sheet: ', sheetName], 'Interpreter', 'none');
if width(data) >= 2, legend('Location', 'best', 'Interpreter', 'none'); end; hold off;