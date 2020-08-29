t_real = [18.5,28.6,38.6];
t_meas = [18.5,23.794,28.752];

figure;
hold on;
plot(t_real,t_meas);

plot([0,40],[0,40],'--');
legend('y=0.8047*x','y=x');
hold off;
xlim([18,40]);
ylim([18,40]);
xlabel('ʵ���¶�T/��');
ylabel('�����¶�t/��');
title('�����¶�t--ʵ���¶�T����');
saveas(gcf,'plot3.png','png');