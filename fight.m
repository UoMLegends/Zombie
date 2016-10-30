v = rand();
if v <= ph                        % if human wins 1 on 1
  hx(b) = ohx(b); hy(b) = ohy(b);
  zx(a) = []; zy(a) = [];         %   remove dead zombie
  ozx(a) = []; ozy(a) = [];
  Z = Z - 1;
  b = 1;
else                              % if zombie wins 1 on 1
  Z = Z + 1;
  zx(Z) = ohx(b); zy(Z) = ohy(b); %   add new zombie in dead human's position
  ozx(Z) = zx(Z); ozy(Z) = zy(Z);
  hx(b) = []; hy(b) = [];         %   remove dead human
  ohx(b) = []; ohy(b) = [];
  H = H - 1;
  b = b - 1;
end
