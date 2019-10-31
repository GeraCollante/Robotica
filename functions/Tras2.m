function result = Rot(axis, distance)
switch axis
    case 'X'
        result = [  1, 0, 0, distance;
                    0, 1, 0, 0;
                    0, 0, 1, 0;
                    0, 0, 0, 1; ];
    case 'Y'
        result = [  1, 0, 0, 0;
                    0, 1, 0, distance;
                    0, 0, 1, 0;
                    0, 0, 0, 1; ];
    case 'Z'
        result = [  1, 0, 0, 0;
                    0, 1, 0, 0;
                    0, 0, 1, distance;
                    0, 0, 0, 1; ];
    otherwise
        disp('Input no valida')
end