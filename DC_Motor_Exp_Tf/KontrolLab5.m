clear all;
G=0.8778;to=0.114;toNew=0.100;T=0.011;


%Karakteristik Denklem ile çözüm
[K,K0]=FOrdTfFindPI_CharactEqu(G,to,toNew,T); %(K,to,yerlesmeZamani_toFactor,ksi,T)
K=double(K); K0=double(K0);

