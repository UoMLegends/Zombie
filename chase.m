% zombie chases closest human
if distance <= closestDistance
  closestDistance = distance;
  zx(a) = ozx(a) + zSpeed*sqrt(dt)*(ohx(b)-ozx(a))/distance;
  zy(a) = ozy(a) + zSpeed*sqrt(dt)*(ohy(b)-ozy(a))/distance;
end

% human avoid zombie when ph is low
if ph >= 0.9
  hx(b) = ohx(b) - hSpeed*sqrt(dt)*(ohx(b)-ozx(a))/distance;
  hy(b) = ohy(b) - hSpeed*sqrt(dt)*(ohy(b)-ozy(a))/distance;
else
  hx(b) = ohx(b) + hSpeed*sqrt(dt)*(ohx(b)-ozx(a))/distance;
  hy(b) = ohy(b) + hSpeed*sqrt(dt)*(ohy(b)-ozy(a))/distance;
end

% humans stay in the arena
if hx(b) <= 0
  hx(b) = 0 + rand();
elseif hx(b) >= lim
  hx(b) = lim - rand();
end
if hy(b) <= 0
  hy(b) = 0 + rand();
elseif hy(b) >= lim
  hy(b) = lim - rand();
end

% zombies stay in the arena
if zx(a) <= 0
  zx(a) = 0 + rand();
elseif zx(a) >= lim
  zx(a) = lim - rand();
end
if zy(a) <= 0
  zy(a) = 0 + rand();
elseif zy(a) >= lim
  zy(a) = lim - rand();
end
