A_h = [30,36,42,48,54,60,66,72,78,84];
p_h = [0.0211,0.0928,0.209,0.409,0.626,0.679,0.533,0.301,0.149,0.066];

A_v = [46,50,52,54,58,62,66,68,70,74];
p_v = [0.00271,0.01893,0.0864,0.226,0.7,0.528,0.0941,0.0258,0.00929,0.00264];

subplot(1,2,1);
plot(A_h,p_h,'LineWidth',3)
set(get(gca, 'Title'), 'String', 'LD横向发散角');
set(get(gca, 'XLabel'), 'String', '角度/^o');
set(get(gca, 'YLabel'), 'String', '功率/mW');

subplot(1,2,2);
plot(A_v,p_v,'LineWidth',3)
set(get(gca, 'Title'), 'String', 'LD纵向发散角');
set(get(gca, 'XLabel'), 'String', '角度/^o');
set(get(gca, 'YLabel'), 'String', '功率/mW');