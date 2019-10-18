%ROBOT 3GDL

clc; clear all;
syms tita1 tita2 tita3 l1 l2 L1 L2
T = DH(tita1, l1,0, 0)*DH(tita2, l2, 0, pi/2)*DH(tita3,0,L1,0)*DH(pi/2,0,L2,-pi/2)*DH(0,0,0,pi/2);
l1 = 0.2;
l2 = 0.2;
L1 = 0.7;
L2 = 0.3; %Pieza prismatica
tita2=0;
tita3=0;

for tita1 = 0.0:pi/8:pi
    for tita2 = 0.0:pi/8:pi
        for tita3 = 0.0:pi/8:pi  
            Aux=eval(T);
            posX=Aux(1,4);        %Eje x
            posY=Aux(2,4);       %Eje y
            posZ=Aux(3,4);        %Eje z
            figure(1)
            stem3(posX, posY, posZ)
            grid on
            hold on
        end
    end
end