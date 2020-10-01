function [ Magnetizacion ] = CalcularMagnetizacion( SpinNet)
Magnetizacion=0;
m = size(SpinNet(:,1));
n = m(1,1);
    for i=1:n-1
        for j=1:n-1
            Magnetizacion = Magnetizacion + SpinNet(i,j);
        end
    end
end