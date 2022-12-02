V_1 = [500,550,600,650,700,750,800];
E_1 = [17.3,26.6,52.6,72.2,99.8,126.6,154.3];

V_2 = [750,770,790,810,830,850];
E_2 = [1.21,1.47,1.66,1.95,2.29,2.41];

subplot(1,2,1);
plot(V_1,E_1,'LineWidth',3);
legend('1064nm');
set(get(gca, 'XLabel'), 'String', '电压/V');
set(get(gca, 'YLabel'), 'String', '能量/mJ');

subplot(1,2,2);
plot(V_2,E_2,'r','LineWidth',3);
legend('532nm');
set(get(gca, 'XLabel'), 'String', '电压/V');
set(get(gca, 'YLabel'), 'String', '能量/mJ');