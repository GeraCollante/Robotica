%ROBOT CONTAINER

clc; clear all;
syms tita1 tita2 d1 d2 L1 L2
T = DH(0,3,0,-pi/2)*DH(pi/2,d1,0,pi/2)*DH(0,d2,0,pi/2)*DH(tita1,0,L1,0)*DH(tita2,0,L2,0)*DH(0,0,0.1,-pi/2)*DH(pi/2,0,0,pi/2)
 
d1=0;
d2=0;
L1 = 0.7;
L2 = 0.3;
tita1=0;
tita2=0;
i=1;
flechaDH(0,0,0,0);
% for tita1 = 0.0:pi/16:pi
%     for tita2 = 0.0:pi/16:pi
        for d1 = 0.0:2:10
            for d2 = 0.0:2:6
                Aux=eval(T);
                posX(i)=Aux(1,4);        %Eje x
                posY(i)=Aux(2,4);       %Eje y
                posZ(i)=Aux(3,4);        %Eje z
                figure(1)
                stem3(posX(i), posY(i), posZ(i))
                grid on
                hold on
                i=i+1;
%             end
%         end
    end
end

% plot3(posX,posY,posZ);grid on;