V = [500,550,600,650,700,750,800];
E_1 = [17.3,26.6,52.6,72.2,99.8,126.6,154.3];
E_2 = [8,12.7,28.3,43.1,70.9,86.1,113];
eta = E_2./E_1;

plot(V,eta,'LineWidth',3);
set(get(gca, 'Title'), 'String', '电压-动静比 曲线');
set(get(gca, 'XLabel'), 'String', '电压/V');
set(get(gca, 'YLabel'), 'String', '动静比/mJ');