function [ B, A ] = peak(G,f0,Q,fs)
%The purpose of this function is to derive the necessary coefficients for a
%peaking/notch filter with given gain, center frequency, constant Q, and sampling
%frequency. 
A = sqrt(10^(G/20)); % Calculating the Amplitude based on the gain requested by the user.
c = cot(pi*f0/fs); % Used to account for the bilinear transform.
w0 = 2*pi*f0/fs;
alpha = sin(w0)/(2*Q);

if G>0 %If chosen gain is > 0, function will act as a peaking filter.
    b0 = 1+ alpha*A; a0 = 1+alpha;
    b1 = -2*cos(w0); a1 = -2*cos(w0);
    b2 = 1 - alpha*A; a2 = 1- alpha;
    
end

if G==0 %If gain=0, function will not alter the selected frequency.
    A = 1;
    B = 1;
    return;
end
    
    
if G<0 %If gain < 0, function will act as notch filter.
    b0 =   1;
    b1 =  -2*cos(w0);
    b2 =   1;
    a0 =   1 + alpha;
    a1 =  -2*cos(w0);
    a2 =   1 - alpha;
end

A = [a0 a1 a2];
B = [b0 b1 b2];
end

