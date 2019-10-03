function result = Rot(axis, angle)
switch axis
    case 'X'
        result = [  1, 0, 0, 0;
                    0, cos(angle), -sin(angle),0;
                    0, sin(angle), cos(angle), 0;
                    0, 0, 0, 1;
                ];
    case 'Y'
        result = [  cos(angle), 0, sin(angle), 0;
                    0, 1, 0,0;
                    -sin(angle), 0, cos(angle), 0;
                    0, 0, 0, 1;
                ];
    case 'Z'
        result = [  cos(angle), -sin(angle), 0, 0;
                    sin(angle), cos(angle), 0, 0;
                    0, 0, 1, 0;
                    0, 0, 0, 1;
                ];
    otherwise
        disp('Input no valida')
end