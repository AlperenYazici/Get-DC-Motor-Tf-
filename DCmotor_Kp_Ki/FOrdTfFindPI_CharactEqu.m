function[Kp Zgeri]=FOrdTfFindPI_CharactEqu(Km,Pm,yerlesmeZamani_toFactor,ksi,T_toFactor)
syms z Kp Ki;
to=1/Pm
G=Km/Pm
ts=yerlesmeZamani_toFactor*to;
wn=4/(ksi*ts)
T=T_toFactor*to
s1=-wn*ksi+i*wn*sqrt(1-ksi^2);
z1=exp(s1*T);
ayrikFOTf=vpa(StoZConvertSyms(G,to,T));
%sisotool(ayrikFOTf,T);
Gpz1=subs(ayrikFOTf,z,z1);
equMain= ( Kp==1/abs(Gpz1) );
[Kp]= solve(equMain,Kp);
Zgeri=ayrikFOTf;