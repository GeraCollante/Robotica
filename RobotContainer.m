%ROBOT CONTAINER

clc; clear all;
syms tita1 tita2 d1 d2 l1 l2
T = DH(pi/2,3,0,-pi/2)*DH(0,d2,0,pi/2)*DH(0,d1,0,pi/2)*DH(tita1,0,0,pi/2)*DH(tita2,0,l1,0)*DH(pi/2,0,l2,-pi/2)*DH(0,0,0,pi/2)
d1=0;
d2=0;
l1 = 0.7;
l2 = 0.3;
tita1=0;
tita2=0;

for tita1 = 0.0:pi/4:pi
    for tita2 = 0.0:pi/4:pi
        for d1 = 0.0:1:10
            for d2 = 0.0:1:6
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