% https://web.archive.org/web/20160303204849/http://freespace.virgin.net/hugo.elias/models/m_ik2.htm
% METODO DEL GRADIENTE PARA OBTENER IK DE ROBOT SCARA, EXPANDIBLE A
% CUALQUIER ROBOT MODIFICANDO FUNCION COSTO Y AGREGANDO RESPECTIVOS
% GRADIENTES Y ACTUALIZACIONES

clc; clear all;
% PUNTOS OBJETIVO
% px=-0.7516;
% py=0.5795;
% pz=0.5;
px=-0.3;
py=0.8;
pz=0.4;
tcoord = [px,py,pz];
% JOINTS EN POSICIONES AL AZAR
q1=pi/2;
q2=pi/2;
d=0.1;
% LEARNING RATE
lr=pi/128;
% FUNCION ORIGINAL PARA COMPARAR
forig = calcFunction(q1,q2,d);
% CONTADOR
i=1;
% ITERACIONES MAXIMAS
cantIter = 1000;
while (i<cantIter)
    % Calculo valores de la funcion
    f = calcFunction(q1,q2,d);
    % Caculo distancia al origen
    newDist=calcDistance(f,tcoord);
    disp("Distancia nueva: "+newDist)
    % Break en caso de tener un margen de error muy bajo, si no termina por
    % cantidad de iteraciones
    if newDist<1e-5
        break;
    end
    % JOINT Q1
    % Calculo funcion con LR hacia adelante y atrás
    fplus = calcFunction(q1+lr,q2,d);
    fmin = calcFunction(q1-lr,q2,d);
    % Calculo del gradiente
    gradq1=calcDistance(fplus,tcoord)-calcDistance(fmin,tcoord);
    % Actualizacion
    q1=q1-gradq1;
    % JOINT Q2
    % Calculo funcion con LR hacia adelante y atrás
    fplus = calcFunction(q1,q2+lr,d);
    fmin = calcFunction(q1,q2-lr,d);
    % Calculo del gradiente
    gradq2=calcDistance(fplus,tcoord)-calcDistance(fmin,tcoord);
    % Actualizacion
    q2=q2-gradq2;
    % JOINT d
    % Calculo funcion con LR hacia adelante y atrás
    fplus = calcFunction(q1,q2,d+lr);
    fmin = calcFunction(q1,q2,d-lr);
    % Calculo del gradiente
    gradd=calcDistance(fplus,tcoord)-calcDistance(fmin,tcoord);
    % Actualizacion
    d=d-gradd;
    % Aumento iteracion
    i=i+1;
end
disp(newline + "Cantidad de iteraciones: " + i + newline)
% Muestro resultados
if q1>pi
    disp("Imposible obtener ese angulo")
else
    disp("Angulo q1: " + q1*180/pi + "°")
end
if q2>pi/2
    disp("Imposible obtener ese angulo")
else
    disp("Angulo q2: " + q2*180/pi + "°")
end
if d>0.8 || d<0
    disp("Imposible obtener d")
else
    disp("Distancia d: " + round(d,3))
end
% Verificación
disp(newline+"Puntos objetivo: ")
disp(tcoord)
disp("Puntos obtenidos ")
fFinal = calcFunction(q1,q2,d);
disp(fFinal)
disp("Distancia: "+ calcDistance(fFinal,tcoord))

% FUNCION PARA CALCULAR DISTANCIA ENTRE DOS COORDENADAS
function distance = calcDistance(ocoord,tcoord)
    pxo=ocoord(1);
    pyo=ocoord(2);
    pzo=ocoord(3);
    pxt=tcoord(1);
    pyt=tcoord(2);
    pzt=tcoord(3);
    distance = sqrt((pxt-pxo)^2+(pyt-pyo)^2+(pzt-pzo)^2);
end

% FUNCION PARA CALCULAR LOS NUEVOS PUNTOS (BASADA EN PARAMETROS DH)
function fCosto = calcFunction(q1,q2,d)
    L1=0.2;
    L2=0.8;
    L3=0.6;
    L4=0.4;
    T = DH(q1, L1+L2, L3,0)*DH(q2, 0, L4, pi)*DH(0,d,0,0);
    px=T(1,4);
    py=T(2,4);
    pz=T(3,4);
    fCosto=[px,py,pz];
end