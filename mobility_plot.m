%
s_ize = 8;
%size_matrix = zeros(s_ize,1);
one_matrix = ones(s_ize,1)';


% In Silicon around 24 degrees

mu_l_electron = 1360.*one_matrix;
mu_l_hole = 460.*one_matrix;

% Some typical value

N_zero = 1.3*10^17.*one_matrix;

% Different doping
start = 10^13
finish = 10^21

N = linspace(1*10^13, 1*10^21, s_ize);

% Formula

mu_total = mu_l_electron./(1+N./N_zero)

plot(N, mu_total)



