% x = sym(zeros(1,64));
% y = sym(zeros(1,64));
% z = sym(zeros(1,64));
% 
% syms tita1 tita2 tita4 l1 d2 d3 l4
% T=DH(tita1, l1, 0, 0)*DH(tita2, d2, 0,pi)*DH(0, d3,0,0)*DH(tita4, l4, 0, 0);

% tita1=0;
% tita2=pi;
% tita4=0;
% l1=0.7;
% d2 = 0;
% d3 = 0;
% l2=0.3;
% i=1;

% while tita1<=2*pi
%     Aux=eval(T);
%     while tita2<=2*pi
%         % De cada paso tomo la posición
%         x(i)=Aux(1,4);        %Eje x
%         y(i)=Aux(2,4);        %Eje y
%         z(i)=Aux(3,4);        %Eje z
%         tita1=tita1+pi/32;
%         tita2=tita2+pi/32;
%         i=i+1;
%     end
% end

% for tita1 = 0.0:pi/32:2*pi   
%     for tita2 = 0.0:pi/32:2*pi  
%         Aux=eval(T);
%         x(i)=Aux(1,4);        %Eje x
%         y(i)=Aux(2,4);        %Eje y
%         z(i)=Aux(3,4);        %Eje z
%         i=i+1;
%     end
% end
% for tita1 = 0.0:pi/4:2*pi
%     for tita4 = 0.0:pi/4:2*pi
%         for d2 = 0.0:0.1:1
%             for d3= 0.0:0.1:1
%             Aux=eval(T);
%             posX=Aux(1,4);        %Eje x
%             posY=Aux(2,4);       %Eje y
%             posZ=Aux(3,4);        %Eje z
%             figure(1)
%             stem3(posX, posY, posZ)
%             grid on
%             hold on
%             end
%         end
%     end
% end
