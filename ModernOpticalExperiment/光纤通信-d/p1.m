I = [0,10,20,30,40,50];
P = [0.0022,0.0072,0.019,0.1223,7.84,17.32];
plot(I,P,'LineWidth',3);
set(get(gca, 'Title'), 'String', 'I-P曲线','interpreter','latex');
set(get(gca, 'XLabel'), 'String', 'I/mA','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', 'P/mW','interpreter','latex','FontSize',20);