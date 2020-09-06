%% K�r skriptet med "Run" eller F5

close all % st�nger alla �ppna figurer
clear all % tar bort alla definierade variabler
clc       % rensar "Command Window"


%% F�rsta m�tningen - bekanta er med transistorn

Vds = [1];
Ids = [1];

figure(1)
plot(Vds,Ids,'*')
xlabel('V_d_s (V)')
ylabel('I_d_s (A)')
title('Utg�ngskarakteristik f�r V_g_s = xx V')

%% Samla in m�tdata till projektet - UTG�NGSKARAKTERISTIK

% Vgs = 1.5V

Vds15 = [1];
Ids15 = [1e-3];

% Vgs = 3V

Vds3 = [1];
Ids3 = [2e-3];

% Vgs = 4.5V

Vds45 = [1];
Ids45 = [3e-3];

figure(2)
plot(Vds15,Ids15,'*')
hold on
plot(Vds3,Ids3,'*r')
plot(Vds45,Ids45,'*k')
xlabel('V_d_s (V)')
ylabel('I_d_s (A)')
legend('V_g_s = 1.5V','V_g_s = 3V','V_g_s = 4.5V','Location','NorthEast')
title('Utg�ngskarakteristik med gatesp�nningen som parameter')
xlim([0 10])
ylim([0 6e-3])

%% Samla in m�tdata till projektet - �VERF�RINGSKARAKTERISTIK


% Vds = 0.05V

Vgs005 = [1];
Ids005 = [1e-3];

% Vds = 0.1V

Vgs01 = [1];
Ids01 = [2e-3];

% Vds = 10V

Vgs10 = [1];
Ids10 = [3e-3];

figure(3)
plot(Vgs005,Ids005,'*')
hold on
plot(Vgs01,Ids01,'*r')
plot(Vgs10,Ids10,'*k')
xlabel('V_g_s (V)')
ylabel('I_d_s (A)')
legend('V_d_s = 0.05V','V_d_s = 0.1V','V_d_s = 10V','Location','NorthEast')
title('�verf�ringskarakteristik med drainsp�nningen som parameter')
xlim([0 5])
ylim([0 6e-3])

%% Samla in m�tdata till projektet - SUBTR�SKELOMR�DET

Vgssub = [0.45];
Idssub = [20e-12];

figure(4)
semilogy(Vgs10,Ids10,'b*')
hold on
semilogy(Vgssub,Idssub,'r*')
xlabel('V_g_s (V)')
ylabel('I_d_s (A)')
xlim([0 5])
ylim([1e-15 1e-2])
legend('Stark inversion V_d_s = 10V','Substr�skelomr�det V_d_s = 10V','Location','SouthEast')
title('Subtr�skelkarakteristik vid V_d_s = 10V f�r MOSFET')


