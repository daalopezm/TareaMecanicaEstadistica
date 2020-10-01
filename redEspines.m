function [ SpinNet ] = redEspines( n )
%UNTITLED3 Crea una red de espines
%   Detailed explanation goes here
SpinNet=zeros(n,n);
    for i=1:n
        for j=1:n
            sample=rand;
            if(sample<0.5)
                SpinNet(i,j)=-1;
            elseif(sample>=0.5)
                SpinNet(i,j)=1;
            end
        end
    end

end

