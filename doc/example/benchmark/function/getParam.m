function [problem, opts] = getParam(problem_name,opts)


switch problem_name
    case 'Sphere'
        problem.fitnessfun   = @Sphere;
        problem.decodingfun  = @Sphere_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'ScaledSphere'
        problem.fitnessfun   = @ScaledSphere;
        problem.decodingfun  = @ScaledSphere_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Ellipsoid'
        problem.fitnessfun   = @Ellipsoid;
        problem.decodingfun  = @Ellipsoid_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Cigar'
        problem.fitnessfun   = @Cigar;
        problem.decodingfun  = @Cigar_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'k_tablet'
        problem.fitnessfun   = @k_tablet;
        problem.decodingfun  = @k_tablet_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'MMbenchmark'
        problem.fitnessfun   = @MMbenchmark;
        problem.decodingfun  = @MMbenchmark_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Rosenbrock_star'
        problem.fitnessfun   = @Rosenbrock_star;
        problem.decodingfun  = @Rosenbrock_star_decode;
        problem.n_gene       = 50;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Rosenbrock_chain'
        problem.fitnessfun   = @Rosenbrock_chain;
        problem.decodingfun  = @Rosenbrock_chain_decode;
        problem.n_gene       = 100;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Ackley'
        problem.fitnessfun   = @Ackley;
        problem.decodingfun  = @Ackley_decode;
        problem.n_gene       = 50;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Bohachevsky'
        problem.fitnessfun   = @Bohachevsky;
        problem.decodingfun  = @Bohachevsky_decode;
        problem.n_gene       = 50;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Rastrigin'
        problem.fitnessfun   = @Rastrigin;
        problem.decodingfun  = @Rastrigin_decode;
        problem.n_gene       = 20;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Schaffer'
        problem.fitnessfun   = @Schaffer;
        problem.decodingfun  = @Schaffer_decode;
        problem.n_gene       = 20;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'Schwefel'
        problem.fitnessfun   = @Schwefel;
        problem.decodingfun  = @Schwefel_decode;
        problem.n_gene       = 10;
        problem.n_constraint = 0;
        opts.vtr             = 1e-6;
        
    case 'g01'
        problem.fitnessfun   = @g01;
        problem.decodingfun  = @g01_decode;
        problem.n_gene       = 13;
        problem.n_constraint = 9;
        opts.vtr             = -15 * ( 1 - 1e-2 );
        
    case 'g02'
        problem.fitnessfun   = @g02;
        problem.decodingfun  = @g02_decode;
        problem.n_gene       = 20;
        problem.n_constraint = 2;
        opts.vtr             = -0.803619 * ( 1 - 1e-2 );
        
    case 'g03'
        problem.fitnessfun   = @g03;
        problem.decodingfun  = @g03_decode;
        problem.n_gene       = 10;
        problem.n_constraint = 1;
        opts.vtr             = -1 * ( 1 - 1e-2 );
        
    case 'g04'
        problem.fitnessfun   = @g04;
        problem.decodingfun  = @g04_decode;
        problem.n_gene       = 5;
        problem.n_constraint = 6;
        opts.vtr             = -30665.539 * ( 1 - 1e-2 );
        
    case 'g05'
        problem.fitnessfun   = @g05;
        problem.decodingfun  = @g05_decode;
        problem.n_gene       = 4;
        problem.n_constraint = 5;
        opts.vtr             = 5126.4981 * ( 1 + 1e-2 );
        
    case 'g06'
        problem.fitnessfun   = @g06;
        problem.decodingfun  = @g06_decode;
        problem.n_gene       = 2;
        problem.n_constraint = 2;
        opts.vtr             = -6961.81388 * ( 1 - 1e-2 );
        
    case 'g07'
        problem.fitnessfun   = @g07;
        problem.decodingfun  = @g07_decode;
        problem.n_gene       = 10;
        problem.n_constraint = 8;
        opts.vtr             = 24.3062091 * ( 1 + 1e-2 );
        
    case 'g08'
        problem.fitnessfun   = @g08;
        problem.decodingfun  = @g08_decode;
        problem.n_gene       = 2;
        problem.n_constraint = 2;
        opts.vtr             = -0.095825 * ( 1 - 1e-2 );
        
    case 'g09'
        problem.fitnessfun   = @g09;
        problem.decodingfun  = @g09_decode;
        problem.n_gene       = 7;
        problem.n_constraint = 4;
        opts.vtr             = 680.6300573 * ( 1 + 1e-2 );
        
    case 'g10'
        problem.fitnessfun   = @g10;
        problem.decodingfun  = @g10_decode;
        problem.n_gene       = 8;
        problem.n_constraint = 6;
        opts.vtr             = 7049.3307 * ( 1 + 1e-2 );
        
    case 'g11'
        problem.fitnessfun   = @g11;
        problem.decodingfun  = @g11_decode;
        problem.n_gene       = 2;
        problem.n_constraint = 1;
        opts.vtr             = 0.75 * ( 1 + 1e-2 );
        
    case 'g12'
        problem.fitnessfun   = @g12;
        problem.decodingfun  = @g12_decode;
        problem.n_gene       = 3;
        problem.n_constraint = 1;
        opts.vtr             = -1 * ( 1 - 1e-2 );
        
    case 'g13'
        problem.fitnessfun   = @g13;
        problem.decodingfun  = @g13_decode;
        problem.n_gene       = 5;
        problem.n_constraint = 3;
        opts.vtr             = 0.0539498 * ( 1 + 1e-2 );
        
    otherwise
        error('Unexpected Problem_Name!');
end

opts.n_population = 200;
opts.n_children = 200;
opts.n_generation = 1e+5;
opts.n_parent = problem.n_gene + 1;
opts.t_rextar = 6.0;
opts.output_intvl = 1e+3; %1e+8;
opts.selection_type = 0;
% opts.t_limit = 24 * 60 * 60; % 24 hr
% opts.t_limit = 10 * 60; % 10 min
% opts.t_limit = 1 * 60; % 1 min
opts.t_limit = 10;
opts.par = 0;
opts.out_population = 'None'; % 'Population.dat';
opts.out_solution = 'None'; % 'Solution.dat';