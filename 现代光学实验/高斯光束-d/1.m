subplot(1,2,1);
p_1 = plot(z_1,omega_x,'LineWidth',3);
hold on;
p_2 = plot(xrange,omega_x_cf_p,'r--','LineWidth',3);
plot(xrange,omega_x_cf_n,'r--','LineWidth',3);

%change this line if fig cant fit well
line([60,90],[0,0]);
line([75.27,75.27],[-500,500]);
hold off;
set(get(gca, 'XLabel'), 'String', 'Z/cm','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', '$\omega_x/\mu m$','interpreter','latex','FontSize',20);
set(get(gca, 'Title'), 'String', '\omega_x-Z 曲线','FontSize',20);
legend([p_1 p_2],{'原始数据','双曲线拟合'},'interpreter','latex','FontSize',20);

subplot(1,2,2);
p_3 = plot(z_1,omega_y,'LineWidth',3);
hold on;
p_4 = plot(xrange,omega_y_cf_p,'r--','LineWidth',3);
plot(xrange,omega_y_cf_n,'r--','LineWidth',3);

%change this line if fig cant fit well
line([60,90],[0,0]);
line([75.01,75.01],[-600,600]);
hold off;
set(get(gca, 'XLabel'), 'String', '$Z/cm$','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', '$\omega_y/\mu m$','interpreter','latex','FontSize',20);
set(get(gca, 'Title'), 'String', '\omega_y-Z曲线','FontSize',20);
legend([p_3 p_4],{'原始数据','双曲线拟合'},'interpreter','latex','FontSize',20);