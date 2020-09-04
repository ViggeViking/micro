electronVolt = 1.602176634*10^-19; % [eV]
boltzmannConstant = 8.617333262145*10^-5*electronVolt; % [eV/K]
temperature = linspace(0, 1000, 10); % [K]
% Doping 
N_c = 1.5*10^16;
N_n = 1*10^10;
N = N_n;

fermienergy = boltzmannConstant*temperature*log(N_c/N);
fermienergyElectronvolt = fermienergy/electronVolt;

hold on;
grid on;
title('Fermienergi av olika Temperaturer')
xlabel('Temperatur (Kelvin)')
ylabel('Fermienergi (eV)')


plot(temperature, fermienergyElectronvolt)
plot(temperature, zeros(size(temperature)), 'k', 'LineWidth', 3);