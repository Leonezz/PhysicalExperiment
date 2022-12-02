i = [10,45,80,115,150,185,220,255,290,325,360,395,430,465,500];
p = [0.1,0.4,0.5,0.6,0.8,0.8,1.0,1.0,1.2,1.2,1.4,1.3,1.8,1.4,1.9];
v = [3.47,3.71,3.83,3.93,4.01,4.1,4.16,4.24,4.29,4.37,4.42,4.51,4.55,4.64,4.69];

p_cf = 0.003133*i+0.2278;

subplot(1,2,1);
plot(v,i,'LineWidth',3);
set(get(gca, 'XLabel'), 'String', '电压/v');
set(get(gca, 'YLabel'), 'String', '电流/mA');
title("I-V特性曲线");
subplot(1,2,2);
plot(i,p,i,p_cf,'-','LineWidth',3);
legend('原始数据','线性拟合');
gtext('p = 0.003133\times i + 0.2278');
set(get(gca, 'XLabel'), 'String', '电流/mA');
set(get(gca, 'YLabel'), 'String', '功率/mW');
title("P-I特性曲线");