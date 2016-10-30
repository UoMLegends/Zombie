% humans and zombies walk, Brownian motion
zx = zx + sqrt(zSpeed*dt)*randn(1,Z);
zy = zy + sqrt(zSpeed*dt)*randn(1,Z);
hx = hx + sqrt(hSpeed*dt)*randn(1,H);
hy = hy + sqrt(hSpeed*dt)*randn(1,H);

% humans stay in the arena
for n = 1:H
  if hx(n) <= 0
    hx(n) = 0 + rand();
  elseif hx(n) >= lim
    hx(n) = lim - rand();
  end
  if hy(n) <= 0
    hy(n) = 0 + rand();
  elseif hy(n) >= lim
    hy(n) = lim - rand();
  end
end

a = 1;
while a <= Z;
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
  closestDistance = chaseRange;
  b = 1;
  while b <= H;
    if a > Z
      break;
    end
    distance = sqrt((ozx(a)-ohx(b))^2 + (ozy(a)-ohy(b))^2);
    if distance <= fightRange       % if distance is within fightRange
      fight
    elseif distance <= chaseRange   % if distance is within chaseRange
      chase
    end
    b = b + 1;
  end
  a = a + 1;
end
