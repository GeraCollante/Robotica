%ROBOT PARCIAL

clc; clear all;
syms q1 q2 L1 L2 L3 L4 d
T = DH(q1, L1+L2, L3,0)*DH(q2, 0, L4, pi)*DH(0,d,0,0)
q1=0.0;
q2=0.0;
L1=0.2;
L2=0.8;
L3=0.6;
L4=0.4;
d=0.2;
i=1;
flechaDH(0,0,0,0);
for q1 = 0.0:pi/24:pi
    for q2 = 0.0:pi/24:pi/2
        for d = 0.0:0.1:0.8  
                Aux=eval(T);
                posX(i)=Aux(1,4);        %Eje x
                posY(i)=Aux(2,4);       %Eje y
                posZ(i)=Aux(3,4);        %Eje z
%                 figure(1)
%                 stem3(posX(i), posY(i), posZ(i))
%                 grid on
%                 hold on
                i=i+1;
        end
    end
end

plot3(posX,posY,posZ);grid