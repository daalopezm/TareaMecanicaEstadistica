function [ Energia ] = CalcularEnergia( SpinNet, J )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
Energia = 0;
m = size(SpinNet(:,1));
n = m(1,1);
    for i=1:n-1
        for j=1:n-1
            a = i-1;
            b = j-1;
            e = i+1;
            f = j+1;
            if a == 0
                a = -1;
            end
            if b == 0
                b = -1;
            end
            if e == n
                e = 1;
            end
            if f == n
                f = 1;
            end
            SpinCentral = SpinNet(i,j);
            SpinesAlrededorCentral = SpinNet(mod(e,n),j)+SpinNet(mod(a,n),j)+SpinNet(i,mod(f,n))+SpinNet(i,mod(b,n));
            Energia = Energia - J*SpinCentral*SpinesAlrededorCentral;
        end
    end
    Energia = Energia/4;
end

