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
CSAIL = 'CSAIL_01';
manhattan = 'manhattan';
city10000 = 'city10000';
intel = 'intel';
ais = 'ais2klinik';
intel_outliers = 'intel_outliers';

% Outlier ratio
outlier_ratio = 0.01

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

fid = fopen(g2o_file, 'a');

rng('shuffle')

if d==2
    for i=0:outlier_ratio*num_measurements
        name = 'EDGE_SE2';
        idx = sort(randi([1 num_poses-1],1,2));
        dx = -1.5 + 3 * rand();
        dy = -1.5 + 3 * rand();
        dth = -pi + 2 * pi;
        I11 = 1932.958639;
        I12 = -286.345920;
        I13 = 0.0;
        I22 = 5742.124406;
        I23 = 0.0;
        I33 = 1683.795373;
        str = sprintf('\n%s %d %d %f %f %f %f %f %f %f %f %f', name, idx(1), idx(2), dx, dy, dth, I11, I12, I13, I22, I23, I33);
        fprintf(fid, str);
    end
end


fclose(fid);

