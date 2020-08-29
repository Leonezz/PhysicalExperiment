V = [500,550,600,650,700,750,800];
E = [8,12.7,28.3,43.1,70.9,86.1,113];
plot(V,E,'LineWidth',3);
set(get(gca, 'Title'), 'String', '电压-能量 曲线');
set(get(gca, 'XLabel'), 'String', '电压/V');
set(get(gca, 'YLabel'), 'String', '能量/mJ');