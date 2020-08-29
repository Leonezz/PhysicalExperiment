v = [25,50,75,100,125,150,175];
i = [0.17,0.33,0.5,0.67,0.83,1.0,1.17];
rotate = [0,2,13,14,15,20,22];
rotate_r = [2,6,12,20,25,33,41];
verdet = [0,0.026,0.1393,0.13,0.1283,0.1573,0.1625];
verdet_r = [0.0398,0.078,0.1286,0.1875,0.2138,0.2595,0.3029];

subplot(1,2,1);
plot(i,verdet,'LineWidth',3);
set(get(gca, 'XLabel'), 'String', 'I/A','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', '$Verdet$','interpreter','latex','FontSize',20);
set(get(gca, 'Title'), 'String', 'verdet常数-电流（正向）曲线','FontSize',20);
subplot(1,2,2);
plot(i,verdet_r,'LineWidth',3);
set(get(gca, 'XLabel'), 'String', 'I/A','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', '$Verdet$','interpreter','latex','FontSize',20);
set(get(gca, 'Title'), 'String', 'verdet常数-电流（反向） 曲线','FontSize',20);