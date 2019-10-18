zidx = 4;   %z is the 4th position in the array returned by fun
nx = length(xvals);
xvals = 10 : 50;
yvals = 10 : 50;
ny = length(yvals)
z = zeros(nx, ny);
for xidx = 1 : nx
  x = xvals(xidx);
  for yidx = 1 : ny
    y = yvals(yidx);
    zetc = fun(x,y);
    z(xidx, yidx) = zetc(zidx);
  end
end
