%ROBOT 3GDL

clc; clear all;
syms tita1 tita2 d l1 l2 L1
T = DH(tita1, l1,0, 0)*DH(tita2, l2, 0, pi/2)*DH(0,0,L1,pi/2)*DH(0,d+0.1,0,0)
l1 = 0.2;
l2 = 0.2;
L1 = 0.7;
tita1=0;
tita2=pi/2;
d=1;

% for tita1 = 0.0:pi/8:pi
%     for tita2 = 0.0:pi/8:pi
%         for d = 0.0:0.5:1  
            Aux=eval(T);
            posX=Aux(1,4)        %Eje x
            posY=Aux(2,4)       %Eje y
            posZ=Aux(3,4)        %Eje z
            figure(1)
            stem3(posX, posY, posZ)
            grid on
            hold on
%         end
%     end
% end