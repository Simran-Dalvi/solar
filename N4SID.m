% Load data
data = readtable('one_u_one_y.csv');
varNames = data.Properties.VariableNames;

% Extract input and output
u = data{:, varNames{1}};
y = data{:, varNames{2}};
Ts = 1;  % Adjust if needed


% Create iddata object
sys_data = iddata(y, u, Ts);

% Model order (adjust if needed)
order = 4;

% Optional: plot data
figure;
plot(sys_data);
title('Input-Output Data');

%% N4SID
model_n4sid = n4sid(sys_data, order, 'Form', 'canonical');
disp('N4SID Model:');
present(model_n4sid);

% Plot
figure;
compare(sys_data, model_n4sid);
title('N4SID Model Output Comparison');

%%
% Load data
data = readtable('one_u_one_y.csv');
varNames = data.Properties.VariableNames;

% Extract input and output
u = data{:, varNames{1}};
y = data{:, varNames{2}};
Ts = 1;  % Sampling time

% Create iddata object
sys_data = iddata(y, u, Ts);

% Model order
order = 4;
%%
% Replacing deprecated spectrum()
%g = etfe(sys_data);
%figure;
%bode(g);
%title('Empirical Frequency Response using ETFE');

%% 1. Plot Raw Input and Output
figure;
subplot(2,1,1);
plot(u);
title('Input Signal (u)');
xlabel('Time Step'); ylabel('Amplitude');

subplot(2,1,2);
plot(y);
title('Output Signal (y)');
xlabel('Time Step'); ylabel('Amplitude');

%% 2. Plot Input-Output as iddata object
figure;
plot(sys_data);
title('Input-Output Data (iddata object)');

%% 3. Frequency Response Estimate
g = etfe(sys_data);
figure;
bode(g);
title('Empirical Frequency Response using ETFE');


%% 4. Impulse Response Estimate
figure;
impulse(model_n4sid);
title('Impulse Response of N4SID Model');

%% 5. Estimate N4SID model
model_n4sid = n4sid(sys_data, order, 'Form', 'canonical');
disp('N4SID Model:');
present(model_n4sid);

%% 6. Compare Output of Model vs Real Data
figure;
compare(sys_data, model_n4sid);
title('N4SID Model Output Comparison');

%% 7. Residual Analysis
figure;
resid(sys_data, model_n4sid);
title('Residuals of N4SID Model');

%% 8. Pole-Zero Map
figure;
pzmap(model_n4sid);
title('Pole-Zero Map of N4SID Model');

%% 9. Step Response of Identified Model
figure;
step(model_n4sid);
title('Step Response of N4SID Model');

%% 10. Singular Value Plot (Model Order Insight)
figure;
sv = svd(model_n4sid.A);
stem(sv, 'filled');
title('Singular Values of A Matrix');
xlabel('Index'); ylabel('Singular Value');
