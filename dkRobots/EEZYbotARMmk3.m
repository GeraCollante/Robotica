%% TRABAJO PRÁCTICO FINAL ROBÓTICA
% Profesor: PAILOS, Hugo
% Alumnos: COLLANTE, Gerardo / QUINTEROS CASTILLA, Nicolás
% Parámetros DH del robot EEZYbotARMmk3

clc; 
clear variables;
syms tita1 tita2 d l1 l2 L1
close all; clear variables; clc
syms q1 q2 q3 real 
 
% Longitud de enlaces [m]
d1 = 0.034;
a2 = 0.08;
a3 = 0.14;

T = DH(q1,d1,0,pi/2)*DH((pi/2+q2),0,a2,0)*DH((-pi/2+q3),0,a3,0)*DH(pi/2,0,0,pi/2);

i=1;
flechaDH(0,0,0,0);

degrees = 8;
minlim = -0.1;
maxlim = 0.3;

for q1 = deg2rad(-30):deg2rad(degrees):deg2rad(30)
    for q2 = deg2rad(-36):deg2rad(degrees):deg2rad(56)
        for q3 = deg2rad(-44):deg2rad(degrees):deg2rad(0)
            Aux=eval(T);
            posX(i)=Aux(1,4);        % Eje x
            posY(i)=Aux(2,4);        % Eje y
            posZ(i)=Aux(3,4);        % Eje z
            figure(1)
            scatter3(posX(i), posY(i), posZ(i),'.')
            axis equal
            axis([minlim maxlim minlim maxlim minlim maxlim])
            grid on
            hold on
            i=i+1;
        end
    end
end