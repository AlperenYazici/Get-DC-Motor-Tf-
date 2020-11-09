function[discreateFirstOrdTF]=discreateFirsOrder(K,to,T)
syms s z;
fistOrdTf=(K/to)/(s+1/to); %Tranfer Function
firstParantes=( (K/to)/(s+1/to) )*(z/(z-exp(s*T)));%Rezidue Formul Second Parantez
secondParantes=( (K/to)/(s) )* (z/(z-exp(s*T)));%Rezidue Formul First Parantez
discreateFirstOrdTF=vpa(simplify((1-z^(-1))*(subs(firstParantes,s,0)+subs(secondParantes,s,-1/to))));%Rezidue Formul
