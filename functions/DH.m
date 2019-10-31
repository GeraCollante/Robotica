function result = DH(titai, di, ai, alfai)
    vectitai    = Rot('Z',titai);
    vecdi       = Tras2('Z',di);
    vecai       = Tras2('X',ai);
    vecalfai    = Rot('X',alfai);
    result = vectitai * vecdi * vecai * vecalfai;
end