n=50;
iteracionesTemperatura=600;
iteracionesEq=500;
temperatura = 0;
J=0.04;

%% Generando la configuraciones de espines aleatoria inicial.
SpinNet=redEspines(n);
%% Equilibrando el sistema


Energia=zeros(iteracionesTemperatura,1);
Magnetizacion=zeros(iteracionesTemperatura,1);
Temperatura = zeros(iteracionesTemperatura,1);
for i=1:iteracionesTemperatura
    Temperatura(i,1) = 0.01*i;
    for k=iteracionesEq
        SpinNet=metropolis(SpinNet,Temperatura(i,1));
    end
    %SpinNet=metropolis(SpinNet,Temperatura(i,1));   
    Energia(i,1)=CalcularEnergia(SpinNet,J);
    Magnetizacion(i,1)=CalcularMagnetizacion(SpinNet);
end
figure(1)
plot(Temperatura,Energia)
xlabel('Temperatura')
ylabel('Energía')
title('Energía vs temperatura')
figure(2)
plot(Temperatura,Magnetizacion)
xlabel('Temperatura')
ylabel('Magnetización')
title('Magnetización vs temperatura')

tc=2*J/asinh(1)