function [B,A] = shelf(G,f0,fs)
%The purpose of this function is to derive the necessary coefficients for a
%lowshelf filter with given gain, center frequency, constant Q, and sampling
%frequency. The low shelf will be used for the overall gain of your song.

G1 = (10^(G/20)); % Calculating the Amplitude based on the gain requested by the user.
G2 = (10^(-G/20));
C = tan(pi*f0/fs);

if G>=0 %If gain > 0, shelf will boost amplitude of all frequencies beyond
        %f0
    b0 = (G1 + C*sqrt(2) + C^2)/(1+sqrt(2)*C + C^2);
    b1 = 2*(C^2-G1)/(1+sqrt(2)*C + C^2);
    b2 = (G1 - sqrt(2*G1)*C + C^2)/(1+sqrt(2)*C + C^2);
    a0 = 1;
    a1 = 2*(C^2 - 1)/(1+sqrt(2)*C + C^2);
    a2 = (1 - sqrt(2)*C + C^2)/(1+sqrt(2)*C + C^2);
end
if G<0 %If gain < 0, shelf will cut amplitude of all frequencies beyond f0
    b0 = (1+C*sqrt(2)+ C^2)/(G2 + sqrt(2*G2)*C + C^2);
    b1 = 2*(C^2 - 1)/(G2 + sqrt(2*G2)*C + C^2);
    b2 = (1 - sqrt(2)*C + G1*C^2)/(G2 + sqrt(2*G2)*C + C^2);
    a0 = 1;
    a1 = 2*(C^2/G2 - 1)/(1 + sqrt(2/G2)*C + (C^2/G2));
    a2 = (1 - sqrt(2/G2)*C + C^2/G2)/(1 + sqrt(2/G2)*C + (C^2/G2)); 
end


A = [a0 a1 a2];
B = [b0 b1 b2];
end

