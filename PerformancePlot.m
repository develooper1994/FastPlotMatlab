[sx,sy,sz] = peaks(500);
nframes = 490;

surf(sx,sy,sz,'EdgeColor','none')
hold on
h = plot3(sx(1,1),sy(1,1),sz(1,1),'o',...
   'MarkerFaceColor','red',...
   'MarkerSize',14);
hold off

for t = 1:nframes
   set(h,'XData',sx(t+10,t),...
      'YData',sy(t,t+10),...
      'ZData',sz(t+10,t+10)+0.5)
   drawnow
end