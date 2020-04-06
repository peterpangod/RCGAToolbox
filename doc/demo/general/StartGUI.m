% This script starts the graphical user interface (GUI) to run a
% real-coded genetic algorithm to solve an example constrained optimization
% problem.
% 
% 1. Execute this script to open the "RCGAToolbox Mission Cotrol" window.
% 2. Push the [Launch] button at the bottom on the window.
% 3. While RCGAs are running, output files are created in the current
%    working directry.
% 
% --------------------- Example Problem ---------------------
% Minimize:
%   f = x(1)^2 + x(2)^2 + ... + x(10)^2
% 	
% Subject to:
%   g(1) = x(1) * x(2) + 1 <= 0
%   g(2) = x(1) + x(2) + 1 <= 0
% 	-5.12 <= x(i) <= 5.12 for all i
% -----------------------------------------------------------

RCGAToolbox_Mission_Control;