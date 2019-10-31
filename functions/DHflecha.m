function DHflecha(titai, di, ai, alfai)
    DH(titai, di, ai, alfai);
    vectitai    = Rot('Z',titai);
    vecdi       = Tras2('Z',di);
    vecai       = Tras2('X',ai);
    vecalfai    = Rot('X',alfai);
    result = vectitai * vecdi * vecai * vecalfai;
    x = result(1,1:3);
    y = result(2,1:3);
    z = result(3,1:3);
    quiver3(0,0,0,x(1),x(2),x(3),1,'r');
    hold on;
    quiver3(0,0,0,y(1),y(2),y(3),1,'g');
    quiver3(0,0,0,z(1),z(2),z(3),1,'b');
end