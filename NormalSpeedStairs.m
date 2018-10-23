% Code with Poor Performance	Code with Better Performance
% Grow data
figure('Position',[10,10,1500,400])
n = 5000;


h = stairs(1,1);
ax = gca;
ax.XLim = [1,n];
ax.YLim = [0,1];
ax.ZLim = [0,1];
ax.NextPlot = 'add';

xd = 1:n;
yd = rand(1,n);

tic
for ix = 1:n
   set(h,'XData',xd(1:ix),'YData',yd(1:ix));
   drawnow;
end
toc