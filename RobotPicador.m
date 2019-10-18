%ROBOT 3GDL

clc; clear all;
syms tita1 tita2 d l1 l2 L1
% T = DH(tita1, l1,0, 0)*DH(tita2, l2, 0, pi/2)*DH(0,d,L1,pi/2)%*DH(0,d+0.1,0,0)
T = DH(tita1,l1,0,0)*DH(0,l2,0,pi/2)*DH(tita2,0,L1,pi/2)*DH(0,d,0,0);
l1 = 0.2;
l2 = 0.2;
L1 = 0.7;
tita1=0;
tita2=pi/2;
d=1;
i=1;
flechaDH(0,0,0,0);
for tita1 = 0.0:pi/32:pi
    for tita2 = 0.0:pi/32:pi
        for d = 0.0:0.1:0.5 
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

plot3(posX,posY,posZ);grid