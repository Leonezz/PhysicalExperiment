V = [500,550,600,650,700,750,800];
E = [17.3,26.6,52.6,72.2,99.8,126.6,154.3];
plot(V,E,'LineWidth',3);
set(get(gca, 'Title'), 'String', '电压-能量 曲线');
set(get(gca, 'XLabel'), 'String', '电压/V');
set(get(gca, 'YLabel'), 'String', '能量/mJ');