function[A,B]=StoZConvertSyms(K,to,T)
syms z;
H = tf([K],[to 1]); %Transfer Function
Hd = c2d(H,T,'zoh'); %Discreate Tf
[Num,Den]=tfdata(Hd);
 Asnc=cell2mat(Den);
 Bsnc=cell2mat(Num);
 A=-Asnc(2)/Asnc(1)
 B=Bsnc(2)/Asnc(1)
%ztf_syms = poly2sym(cell2mat(Num),z)/poly2sym(cell2mat(Den),z);

