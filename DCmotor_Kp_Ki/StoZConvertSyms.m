function[ztf_syms]=StoZConvertSyms(G,to,T)
syms z;
H = tf([4*G],[to 1 0]); %Transfer Function
Hd = c2d(H,T,'zoh'); %Discreate Tf
%sisotool(Hd,T)
[Num,Den]=tfdata(Hd);
ztf_syms = poly2sym(cell2mat(Num),z)/poly2sym(cell2mat(Den),z);
