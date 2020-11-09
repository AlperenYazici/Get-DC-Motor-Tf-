function[K,K0]=FOrdTfFindPI_CharactEqu(G,to,toNew,T)
syms z K0;



s1=-1/toNew;
z1=exp(s1*T)
[A , B]=StoZConvertSyms(G,to,T);
K= (A-z1) / (B);
Gz= B*K0 / (z-A+B*K);
equ1=subs(Gz,z,1)==1;
K0=solve(equ1,K0);
% Gpz1=subs(ayrikFOTf,z,z1);
% equMain=simplify(Gpz1 * (Kp + Ki*( z1 / (z1-1) ) ) +1);
% equReal=simplify(real(equMain)==0);
% equImg=simplify(imag(equMain)==0);
% equ=[equReal equImg];
% [Kp Ki]= solve(equ,Kp,Ki);