figure(1)
plot(t,shengyu22*2,t,shengyu25*2,t,shengyu210*2,t,shengyu250*2,'LineWidth',2);grid on
legend('h=2','h=5','h=10','h=50','Location','Best')
% gtext('h=1.2')
% gtext('h=10')
% gtext('h=50')
xlabel('Time')
ylabel('biological remains')
set(gca,'xtick',[],'ytick',[]);
