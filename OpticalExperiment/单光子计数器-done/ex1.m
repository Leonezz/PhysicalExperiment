[light_cnt_x,light_cnt_y] = textread('xxx.txt','%n%n');
[loss_x,loss_y] = textread('xxx_loss.txt','%n%n');
[afterLoss_x,afterLoss_y] = textread('xxx_afterLoss.txt','%n%n');

average_cnt = sum(light_cnt_y)/length(light_cnt_y);

fg1 = figure(1);
plot(light_cnt_x,light_cnt_y);
hold on;
plot(light_cnt_x,ones(length(light_cnt_y))*average_cnt);
legend('1561');
ylim([0,1800]);
set(get(gca, 'Title'), 'String', '光子数');
saveas(fg1,'1.png','png');


fg2 = figure(2);
ylim([0,1800]);
plot(loss_x,loss_y);
set(get(gca, 'Title'), 'String', '光子辐射衰减');
saveas(fg2,'2.png','png');


fg3 = figure(3);
plot(afterLoss_x,afterLoss_y);
ylim([0,1400]);
set(get(gca, 'Title'), 'String', '衰减后光子数');
saveas(fg3,'3.png','png');