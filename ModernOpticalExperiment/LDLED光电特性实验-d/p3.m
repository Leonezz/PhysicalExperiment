i = [0,3,6,7,8,9,10,11,12,13,14,14.5,15,15.5,16,16.5,17,17.5,18,18.5,19];
p = [0,0,0,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.3,0.7,1.1,1.4,1.8,2.1,2.5,2.8,3.0,3.1,3.2];
v = [0,1.96,2.06,2.09,2.11,2.14,2.16,2.18,2.21,2.23,2.25,2.27,2.28,2.29,2.3,2.31,2.32,2.34,2.78,4.11,5.3];
i_cf = i(10:18);
p_cf = p(10:18);
p_line = 0.6452*i_cf-8.542;
subplot(1,2,1);
plot(v,i,'LineWidth',3);
set(get(gca, 'XLabel'), 'String', '电压/v');
set(get(gca, 'YLabel'), 'String', '电流/mA');
title("I-V特性曲线");
subplot(1,2,2);
plot(i,p,i_cf,p_line,'LineWidth',3);
legend('原始数据','线性拟合');
gtext('P = 0.6452\times I - 8.542');
set(get(gca, 'XLabel'), 'String', '电流/mA');
set(get(gca, 'YLabel'), 'String', '功率/mW');
title("P-I特性曲线");