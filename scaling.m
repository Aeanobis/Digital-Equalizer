function y = scaling(B,A)
%Scaling to reduce noise
 a0 = (A(1)*A(3))/B(3);
 a1 = (A(2)*(A(1)+A(3)))/(2*B(3));
 a2 = ((A(1)-A(3))^2 + A(1)^2)/(4*B(3));
 b1 = (B(2)*(1+B(3)))/(2*B(3));
 b2 = ((1 - B(3))^2 + B(1)^2)/(4*B(3));
 S1 = sqrt((a0+a1+a2)/(1+b1+b2));
 S2 = sqrt((a0-a1+a2)/(1-b1+b2));
 if S1 > S2
     y = S1;
 else
     y = S2;
 end
end

