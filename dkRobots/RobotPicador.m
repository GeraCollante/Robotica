%ROBOT PICADOR

clc; clear variables;
syms tita1 tita2 tita3 d l1 l2 L1
% T = DH(tita1, l1,0, 0)*DH(tita2, l2, 0, pi/2)*DH(0,d,L1,pi/2)%*DH(0,d+0.1,0,0)
T = DH(tita1,2,0,pi/2)*DH(tita2,0,1,0)*DH(tita3,0,1,0)*DH(2*pi-(tita2+tita3),0,2,0);
i=1;
flechaDH(0,0,0,0);
tita1=0;
tita2=0;
% tita2=pi/2;
tita3=0;
for tita1 = 0.0:pi/16:pi
    for tita2 = 0.0:pi/16:pi
        for tita3 = 0.0:pi/16:pi
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