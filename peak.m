function [B,A] = peak(G,f0,Q,fs)
%The purpose of this function is to derive the necessary coefficients for a
%peaking/notch filter with given gain, center frequency, constant Q, and sampling
%frequency.

G1 = (10^(G/20)); % Calculating the Amplitude based on the gain requested by the user.
G2 = (10^(-G/20));
C = tan(pi*f0/fs);

if G>0
    b0 = (1 + G1/Q*C + C^2)/(1+C/Q + C^2);
    b1 = 2*(C^2 - 1)/(1 + C/Q + C^2);
    b2 = (1 - (G1/Q*C) + C^2)/(1+(C/Q)+C^2);
    a0 = 1;
    a1 = 2*(C^2 - 1)/(1 + C/Q + C^2);
    a2 = (1-(C/Q)+C^2)/(1 + C/Q +C^2);
end

if G<=0
    b0 = (1 + (C/Q) + C^2)/(1 + (G2/Q)*C + C^2);
    b1 = 2*(C^2 - 1)/(1 + (G2/Q*C) + C^2);
    b2 = (1 - (C/Q) + C^2)/(1 + (C*G2/Q) + C^2);
    a0 = 1;
    a1 = 2*(C^2 - 1)/(1 + (C*G2/Q) + C^2);
    a2 = (1 - (G2/Q*C) + C^2)/(1 + (G2*C/Q) + C^2);
end

A = [a0 a1 a2];
B = [b0 b1 b2];
end