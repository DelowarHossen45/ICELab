bits = [1 1 0 1 1 0 1 0 1 0 0 0 1];
bitrate = 1; 
[t,s] = unrz(bits,bitrate);
plot(t,s,'LineWidth',2);

function [t,x] = unrz(bits, bitrate)
    T = length(bits)/bitrate; 
    n = 10000;
    N = n*length(bits);
    t = 0:T/N:T;
    x = zeros(1,length(t)); 
    for i = 0:length(bits)-1
        if bits(i+1) == 1
            x(i*n+1:(i+1)*n) = 3;
        else
            x(i*n+1:(i+1)*n) = 0;
        end
    end
end
