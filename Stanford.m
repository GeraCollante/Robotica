%ROBOT 3GDL

clc; clear all;
syms tita1 l1 d2 d3 tita4 l4
T = DH(tita1, l1,0, 0)*DH(pi/2, d2, 0, pi/2)*DH(0,d3,0,0)*DH(tita4,l4,0,0);
l1 = 0.2;
d2 = 0;
d3 = 0.5;
l4 = 0.4;
tita1=0;
tita4=0;

for tita1 = 0.0:pi/8:pi
    for d2 = 0.0:0.5:3
        for tita4 = 0.0:pi/8:pi  
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