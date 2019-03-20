function [t,x] = UnipolarLineCoding(bits, bitrate)
T = length(bits)/bitrate; % full time of bit sequence
n = 200;
N = n*length(bits);
t = 0:T/N:T;
x = zeros(1,length(t)); % output signal
for i = 0:length(bits)-1
  if bits(i+1) == 1
    x(i*n+1:(i+1)*n) = 1;
  else
    x(i*n+1:(i+1)*n) = 0;
  end
end