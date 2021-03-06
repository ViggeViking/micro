electronVolt = 1.602176634*10^-19; % [eV]
boltzmannConstant = 8.617333262145*10^-5*electronVolt; % [eV/K]
temperature = linspace(170, 325, 153); % [K]
% Doping 
N_c = 2.5*10^19;
N_n = [1*10^13 1*10^14 1*10^15];


hold on;
grid on;
%title('Fermienergi av olika Temperaturer')
xlabel('Temp. (Kelvin)', 'FontSize',13,'FontWeight','bold','Color','r')
ylabel('Ef-Ec (eV)', 'FontSize',13,'FontWeight','bold','Color','r')

for doping = N_n
    fermienergy = boltzmannConstant*temperature*log( N_c/doping );
    fermienergyElectronvolt = fermienergy/electronVolt;

    plot(temperature, fermienergyElectronvolt , ... 
    'DisplayName',  num2str(doping, 1), 'LineWidth', 3 )
end

legend('location', 'best', 'FontSize',12);

%plot(temperature, zeros(size(temperature)), 'k', 'LineWidth', 3);