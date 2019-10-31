%ROBOT 3GDL

clc; clear all;
syms d1 tita2 tita3 L1 L2 L3 K1 K2 K3
% T = DH(0,0,0,0)*DH(0,K3,(L1-K1)+d1,0)*DH(0,L2,0,tita2)*DH(0,L3,K2,tita3)*DH(0,L3,0,0)
T = DH(0,(L1-K1)+d1,K3,0)*DH(tita2,0,L2,0)*DH(tita3,-K2,L3,pi/2)
L1 = 0.7;
L2 = 0.3; %Pieza prismatica
L3 = 0.2;
K1 = 0.05;
K2 = 0.1;
K3 = 0.02;
d1 = 0.5;
tita2=0;
tita3=0;
i=1;
titaval = 70*pi/180;
flechaDH(0,0,0,0);
for tita2 = -titaval:pi/16:titaval
    for tita3 = -titaval:pi/64:titaval
        for d1 = -0.1:0.05:0.2  
            Aux=eval(T);
            posX(i)=Aux(1,4);        %Eje x
            posY(i)=Aux(2,4);       %Eje y
            posZ(i)=Aux(3,4);        %Eje z
%             figure(1)
%             stem3(posX(i), posY(i), posZ(i))
%             grid on
%             hold on
            i=i+1;
        end
    end
end

plot3(posX,posY,posZ);grid on;