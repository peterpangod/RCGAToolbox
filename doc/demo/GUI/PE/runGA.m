clearvars;
clear randn rand;

addpath(genpath('../../'));

opts.par = 0;
opts.output_intvl = 1;
opts.vtr = 1e-6;
opts.t_limit = 1e+2;
opts.t_rextar = 6.0;
opts.selection_type = 0;
opts.out_transition = 'Transition.txt';
opts.out_population = 'Population.txt';
opts.out_best = 'Best.txt';
opts.out_report = 'Report.mat';

problem.n_gene = 9;
opts.n_generation = 100;
opts.n_population = 50;
opts.n_children = 25;
% Param.n_population = 1000;
% Param.n_children = 1000;
opts.output_intvl = 1;
problem.n_constraint = 0;
opts.n_parent = problem.n_gene + 1;
opts.selection_type = 0;
opts.vtr = 0;
opts.Pf = 0;
% Param.Pf = 0;

rng(1);

fast_flag = 0; % ODEXX
% fast_flag = 1; % SundialsTB
% fast_flag = 2; % MEX

measurement = 'MeasurementExample.xls';
% measurment = SBmeasurement('MeasurementExample.xls');
decodingfun = @decodingExample;

%% SBML ver
% simopts.method = 'ode23s';
% simopts.abstol = 1e-6;
% simopts.reltol = 1e-6;
model = 'modelExample_m.m';
% model = 'SBMLexampleLevel2.xml';
% model = 'SBMLexampleLevel2';
% model = IQMmodel('SBMLexampleLevel2.xml');
% model = IQMmodel('SBMLexampleLevel2');
% optimizedmodel = REXstarJGG_PE(model,measurment,fast_flag,fitnessfun,decodingfun,simopts,opts);
% optimizedmodel = REXstarJGG_PE(model,decodingfun,measurement);
% optimizedmodel = REXstarJGG_PE(model,decodingfun,measurement,[],[],[],fast_flag,[],[]);
% Results = RCGA_REXstarJGG_PE(model,decodingfun,measurement,[],[],fast_flag,simopts,opts);
Results = RCGA_REXstarJGG_PE(model,decodingfun,measurement,[],[],fast_flag,[],opts);

%% MATLAB ODEFUN ver
% odefun = @hill_odefun;
% odefun = 'hill_odefun';
odefun = 'hill_odefun.m';
% Results = REXstarJGG_PE(odefun,icfun,decodingfun,measurment,9);
% Results = REXstarJGG_PE(odefun,icfun,decodingfun,measurment,9,opts);
% Results = REXstarJGG_PE(odefun,decodingfun,measurement,[],[],fast_flag,[],opts);

%% C ODEFUN ver
% model = 'hill_c';
% Results = REXstarJGG_PE(model,decodingfun,measurement,[],[],fast_flag,[],opts);