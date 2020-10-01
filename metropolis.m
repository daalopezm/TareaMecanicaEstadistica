function [ SpinNet ] = metropolis( SpinNet, temperatura )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
m = size(SpinNet(:,1));
n = m(1,1);
    for i=1:n-1
        for j=1:n-1
            c = i-1;
            d = j-1;
            e = i+1;
            f = j+1;
            if c == 0
                c = -1;
            end
            if d == 0
                d = -1;
            end
            if e == n
                e = 1;
            end
            if f == n
                f = 1;
            end
            a = round((n-2)*rand+1); %Indices para seleccionar el spin en la matriz
            b = round((n-2)*rand+1);
            SpinSeleccionado = SpinNet(a,b);
            SpinesAlrededorCentral = SpinNet(mod(e,n),j)+SpinNet(mod(c,n),j)+SpinNet(i,mod(f,n))+SpinNet(i,mod(d,n));
            CambioEnergia = 2*SpinSeleccionado*SpinesAlrededorCentral;
            if CambioEnergia < 0
                SpinSeleccionado = SpinSeleccionado*-1;
            elseif rand < exp(-CambioEnergia/temperatura)
                SpinSeleccionado = SpinSeleccionado*-1;
            end
            SpinNet(a,b) = SpinSeleccionado;
        end
    end

end

