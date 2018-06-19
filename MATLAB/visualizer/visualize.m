%% Reset environment
clear all;
close all;
clc;

%% Import SE-Sync
run('../import_SE_Sync.m');  % It's that easy :-)!


%% Select dataset to run
data_dir = '../../data/';  % Relative path to directory containing example datasets

% 3D datasets
sphere2500 = 'sphere2500';
torus = 'torus3D';
grid = 'grid3D';
garage = 'parking-garage';
cubicle = 'cubicle';
rim = 'rim';

% 2D datasets
CSAIL = 'CSAIL';
manhattan = 'manhattan';
city10000 = 'city10000';
intel = 'intel';
ais = 'ais2klinik';
intel_outliers = 'intel_outliers';


% Pick the dataset to run here
file = CSAIL;

g2o_file = strcat(data_dir, file, '.g2o');

%% Read in .g2o file
tic();
fprintf('Loading file: %s ...\n', g2o_file);
measurements = load_g2o_data(g2o_file);  
t = toc();
num_poses = max(max(measurements.edges));
num_measurements = length(measurements.kappa);
d = length(measurements.t{1});
fprintf('Processed input file %s in %g seconds\n', g2o_file, t);
fprintf('Number of poses: %d\n', num_poses);
fprintf('Number of measurements: %d\n', num_measurements);

mtx = dlmread('poses.txt'); 
t_lenght = size(mtx,2)/3;
T = mtx(:,1:t_lenght);
R = mtx(:,t_lenght+1:3*t_lenght);

plot_poses(T, R, measurements.edges, '-b', .25);

axis tight;