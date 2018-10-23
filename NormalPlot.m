[sx,sy,sz] = peaks(500);
nframes = 490;

for t = 1:nframes
   surf(sx,sy,sz,'EdgeColor','none')
   hold on
   plot3(sx(t+10,t),sy(t,t+10),...
         sz(t+10,t+10)+0.5,'o',...
        'MarkerFaceColor','red',...
        'MarkerSize',14)
   hold off
   drawnow
end