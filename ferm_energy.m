electronVolt = 1.602176634*10^-19; % [eV]
boltzmannConstant = 8.617333262145*10^-5*electronVolt; % [eV/K]
temperature = linspace(170, 323, 153); % [K]
% Doping 
N_c = 1*10^10;
N_n = [1*10^13 1*10^14 1*10^15];


hold on;
grid on;
title('Fermienergi av olika Temperaturer')
xlabel('Temperatur (Kelvin)')
ylabel('Fermienergi (eV)')

for doping = N_n
    fermienergy = boltzmannConstant*temperature*log( N_c/doping );
    fermienergyElectronvolt = fermienergy/electronVolt;

    plot(temperature, fermienergyElectronvolt , ... 
    'DisplayName',  num2str(doping) )
end

legend

%plot(temperature, zeros(size(temperature)), 'k', 'LineWidth', 3);