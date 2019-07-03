function Group = requestFitnessCalc(problem,opts,Group)
% requestFitnessCalc returns Group with calculated f, g, and phi.
% 
% [SYNTAX]
% Group = requestFitnessCalc(problem,opts,Group)
% 
% [INPUT]
% problem :  Problem structure
% chrom   :  Individual
% Group   :  Array of individual
% 
% [OUTPUT]
% Group   :  Array of individual with calculated f, g, and phi


%% Shortening variable names
n_constraint = problem.n_constraint;
par = opts.par;
n_group = length(Group);


%% Preparation
f_temp = zeros(n_group,1);
g_temp = zeros(n_group,max(1,n_constraint));
phi_temp = zeros(n_group,1);


%% Calculating f, g, and phi
if 0 < par
    parfor i = 1 : n_group
        [f_temp(i), g_temp(i,:), phi_temp(i)] = getFitness(problem,Group(i));
    end
else
    for i = 1 : n_group
        [f_temp(i), g_temp(i,:), phi_temp(i)] = getFitness(problem,Group(i));
    end
end


%% Setting f, g, and phi to Group
for i = 1 : n_group
    Group(i).f = f_temp(i);
    Group(i).g = g_temp(i,:);
    Group(i).phi = phi_temp(i);
end
