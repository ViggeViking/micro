clc
clear all

electronVolt = 1.602176634*10^-19; % [eV]
boltzmannConstant = 8.617333262145*10^-5*electronVolt; % [eV/K]
temperature = 300; % K

%____________________________________
% Material 1
N_D1 = [ 10^16 10^16 10^11 10^15 ];
N_A1 = [ 10^10 10^14 10^12 10^14 ];
% Material 2
N_D2 = [ 10^10 10^14 10^17 10^16 ];
N_A2 = [ 10^14 10^16 10^11 10^11 ];

% Special
N_D = [ 10^16 10^16 10^17 10^15 ];
N_A = [ 10^14 10^16 10^12 10^16 ];

n_i = [ 10^16 10^8 10^11 10^10 ];
%____________________________________

for i=1:4
    V_bi1 = (boltzmannConstant*temperature)/electronVolt * ...
    ( log( (N_A1(i)*N_D1(i)) /n_i(i)^2) );
    
    V_bi2 = (boltzmannConstant*temperature)/electronVolt * ...
    ( log( (N_A2(i)*N_D2(i)) /n_i(i)^2) );

    V_bi = (boltzmannConstant*temperature)/electronVolt * ...
    ( log( (N_A(i)*N_D(i)) /n_i(i)^2) )

    
    %deltaV_bi = abs(V_bi1 - V_bi2)
end
