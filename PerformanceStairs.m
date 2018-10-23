% Segment data
figure('Position',[10,10,1500,400])
n = 5000;
seg_size = 500;
xd = 1:n;
yd = rand(1,n);

h = stairs(1,1);
ax = gca;
ax.XLim = [1,n];
ax.YLim = [0,1];
ax.ZLim = [0,1];
ax.NextPlot = 'add';

tic
start = 1;
for ix=1:n
   % Limit object size
   if (ix-start > seg_size)
      start = ix-1;
      h = stairs(1,1);
   end
   set(h,'XData',xd(start:ix),...
      'YData',yd(start:ix));
   % Update display in 50 point chunks
   if mod(ix,50) == 0
      drawnow;
   end
end
toc