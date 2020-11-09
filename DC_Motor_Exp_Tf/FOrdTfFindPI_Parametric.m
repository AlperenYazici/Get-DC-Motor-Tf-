function[Kp,Ki]=FOrdTfFindPI_Parametric(K,to,yerlesmeZamani_toFactor,ksi,T)
syms z;
ts=yerlesmeZamani_toFactor*to; % 4*to < ts < 7*to
wn=4/(ksi*ts);
s1=-wn*ksi+i*wn*sqrt(1-ksi^2);
z1=exp(s1*T);
beta=angle(z1);
z1Genlik=abs(z1);
ayrikFOTf=vpa(StoZConvertSyms(K,to,T));
%ayrikFOTf=discreateFirsOrder(K,to,T)
Gpz1=subs(ayrikFOTf,z,z1);
fi=angle( Gpz1 );
Gpz1Genlik=abs( Gpz1 );
Ki=(-sin(fi)/Gpz1Genlik) * (z1Genlik-2*cos(beta)+1/z1Genlik) / (sin(beta));
Kp=(-cos(fi)/Gpz1Genlik) -( 2*Ki*z1Genlik * (z1Genlik-cos(beta)) / (z1Genlik^2-2*z1Genlik*cos(beta)+1) ) + (-z1Genlik*sin(fi)+cos(beta)*sin(fi)) / (Gpz1Genlik*sin(beta));
