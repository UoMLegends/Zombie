Z = 1;
H = 100;                          % 1, 100, 1000
%H = h0;
ph = 0.3;                     % probability of human killing zombie
lim = 100;                      % 100, 200, 300
%lim = lim0;
hSpeed = 10;
zSpeed = 20;
fightRange = 2;
chaseRange = 10;
framerate = 0.00001;
dt = 0.01;                    % time step
learn = 0.3;

zx = lim*rand(1,Z);
zy = lim*rand(1,Z);
hx = lim*rand(1,H);
hy = lim*rand(1,H);

Zn = [];
Hn = [];
iph = ph;
ichaseRange = chaseRange;
frame = 0;
t = 0;
while Z>0 && H>0
  ohx = hx; ohy = hy; ozx = zx; ozy = zy;
  walk
  frame = frame + 1;
  t = t + dt;
  Zn(frame) = Z;
  Hn(frame) = H;
  % ph = 1 - 1/(learn*t + 1);     % human gain experience
  if ph >= 0.9
    chaseRange = 10*(t - 9/learn);   % chaseRange increase wrt time
  end
  scatter(hx, hy, 'b', 'filled');
  hold on;
  scatter(zx, zy, 'r', 'filled');
  xlim([0 lim]);
  ylim([0 lim]);
  hold off;
  pause(framerate);
end
