function flechaDH(titai,di,ai,alfai)
    y=0;
    quiver3(ai,y,di,cos(titai),sin(titai),0,1,'r')
    hold on;
    quiver3(ai,y,di,-cos(alfai)*sin(titai),cos(alfai)*cos(titai),sin(alfai),1,'g')
    quiver3(ai,y,di,sin(alfai)*sin(titai),-sin(alfai)*cos(titai),cos(alfai),1,'b')
end