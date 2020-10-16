%ROBOT SCARA

clc; clear all;
syms tita1 d1 a1 tita2 a2 d3 tita4 d4
% MATRIZ T OBTENIDOS A PARTIR DE MATRICES DH
T = DH(tita1, d1, a1,0)*DH(tita2, 0, a2, pi)*DH(0,d3,0,0)*DH(-tita4,d4,0,0)
% PARAMETROS
a1 = 0.7;
a2 = 0.5;
d1 = 0.4;
d3 = 0.3; %Pieza prismatica
d4 = 0.5; 
tita4 = 0;
% CONTADOR
i=1;
% FLECHAS REFERENCIA
flechaDH(0,0,0,0);
% PLOTEO DEL ESPACIO DE TRABAJO
for tita1 = 0.0:pi/16:pi
    for tita2 = 0.0:pi/16:pi
        for d3 = 0.0:1:1
%             for tita4 = 0.0:pi/16:pi  
                % EVALUACION DE LA MATRIZ T
                Aux=eval(T);
                % PUNTOS
                posX(i)=Aux(1,4);        %Eje x
                posY(i)=Aux(2,4);       %Eje y
                posZ(i)=Aux(3,4);        %Eje z
%                 figure(1)
%                 stem3(posX(i), posY(i), posZ(i))
%                 grid on
%                 hold on
                i=i+1;
%             end
        end
    end
end

plot3(posX,posY,posZ);grid