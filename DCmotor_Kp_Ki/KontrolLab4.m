clear all;
syms Zgeri z
Km=134.082;Pm=27.9146;yerlesmeZamani_toFactor=5;ksi=0.8;T_toFactor=1/10;
%Parametrik Denklemler Yöntemi ile çözüm
%[Kp1]=FOrdTfFindPI_Parametric(Km,Pm,yerlesmeZamani_toFactor,ksi,T_toFactor); %(Km,Pm,yerlesmeZamani_toFactor,ksi,T_toFactor)
%Kp1=double(Kp1);


%Karakteristik Denklem ile çözüm
[Kp Zgeri]=FOrdTfFindPI_CharactEqu(Km,Pm,yerlesmeZamani_toFactor,ksi,T_toFactor); %(Km,Pm,yerlesmeZamani_toFactor,ksi,T_toFactor)
Kp=double(Kp);
Zgeri
%sisotool(Zgeri,1/(10*Pm))

