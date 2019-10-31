%ROBOT 3GDL

clc; clear all;
syms tita0 tita1 tita2 l1 l2 L1 L2
T = DH(tita0,l1,0,0)*DH(0,l2,0,pi/2)*DH(tita1,0,L1,0)*DH(tita2,0,L2,0)*DH(0,0,0.1,-pi/2)*DH(pi/2,0,0,pi/2)
l1 = 0.2;
l2 = 0.2;
L1 = 0.7;
L2 = 0.3; %Pieza prismatica
tita0=0;
tita1=0;
tita2=0;
i=1;
flechaDH(0,0,0,0);
for tita0 = 0.0:pi/10:pi
    for tita1 = 0.0:pi/10:pi
        for tita2 = 0.0:pi/10:pi  
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