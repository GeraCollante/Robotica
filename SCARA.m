%ROBOT SCARA

clc; clear all;
syms tita1 d1 a1 tita2 a2 d3 tita4 d4
T = DH(tita1, d1, a1,0)*DH(tita2, 0, a2, pi)*DH(0,d3,0,0)*DH(-tita4,d4,0,0)
a1 = 0.7;
a2 = 0.5;
d1 = 0.4;
d3 = 0.3; %Pieza prismatica
d4 = 0.5; 

for tita1 = 0.0:pi/8:pi
    for tita2 = 0.0:pi/8:pi
        for d3 = 0.0:1:1
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
end