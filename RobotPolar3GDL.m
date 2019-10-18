%ROBOT 3GDL

clc; clear all;
syms tita1 tita2 d3 l1
T = DH(tita1, l1,0, pi/2)*DH(tita2, 0, 0, -pi/2)*DH(0,d3,0,0)
l1 = 0.2;
tita1=0;
tita2=0;
d3=0;
flechaDH(0,0,0,0);
for tita1 = 0.0:pi/8:pi
    for tita2 = 0.0:pi/8:pi
        for d3 = 0.0:0.2:1  
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