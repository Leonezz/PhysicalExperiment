clc;close all;clear all;
z_1 = zeros(8,1);
z_1(1) = 101;
for i=2:8
    z_1(i) = z_1(i-1)-1;
end

omega_x = [347.85;333.95;326.767;302.84;311.366;312.814;310.065;317.484]/2;
omega_y = [369.549;379.139;337.94;336.274;338.166;355.194;353.166;353.003]/2;

f = fittype('sqrt((x-a)^2/b^2+1)*c','independent','x','coefficients',{'a','b','c'});
f_x = fit(z_1,omega_x,f);
xcoeffs = coeffvalues(f_x);
distence_x = max(max(z_1)-xcoeffs(1),xcoeffs(1)-min(z_1));
zrange_x = [xcoeffs(1)-distence_x:0.1:xcoeffs(1)+distence_x];
omega_x_cf_p = f_x(zrange_x);
omega_x_cf_n = -omega_x_cf_p;

omega_range = [min(omega_x_cf_n)-100,max(omega_x_cf_p)+100];


f_y = fit(z_1,omega_y,f);
ycoeffs = coeffvalues(f_y);
distence_y = max(max(z_1)-ycoeffs(1),ycoeffs(1)-min(z_1));
zrange_y = [ycoeffs(1)-distence_y:0.1:ycoeffs(1)+distence_y];
%omega_y_cf_p = sqrt((zrange-75.01).^2/9.635^2+1)*144.2;
omega_y_cf_p = f_y(zrange_y);
omega_y_cf_n = -omega_y_cf_p;
figure(1);
set(gcf, 'position', [0 0 2200 800]);

% plot omega_x - Z
subplot(1,2,1);
p_1 = plot(z_1,omega_x,'LineWidth',3);
xlim([zrange_x(1),zrange_x(length(zrange_x))]);
ylim(omega_range);
hold on;
p_2 = plot(zrange_x,omega_x_cf_p,'r--','LineWidth',3);
plot(zrange_x,omega_x_cf_n,'r--','LineWidth',3);

line([zrange_x(1),zrange_x(length(zrange_x))],[0,0]);
line([xcoeffs(1),xcoeffs(1)],omega_range);
hold off;
set(get(gca, 'XLabel'), 'String', 'Z/cm','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', '$\omega_x/\mu m$','interpreter','latex','FontSize',20);
set(get(gca, 'Title'), 'String', '\omega_x-Z 曲线','FontSize',20);
legend([p_1 p_2],{'原始数据','双曲线拟合'},'interpreter','latex','FontSize',20);

formula_z_1= sprintf('$\\leftarrow Z = %f$',xcoeffs(1));
gtext(formula_z_1,'interpreter','latex','FontSize',20);
formula_x = sprintf('$\\leftarrow \\frac{\\omega_x^2}{%f^2}- \\frac{(Z-%f)^2}{%f^2}=1$',xcoeffs(3),xcoeffs(1),xcoeffs(2));
gtext(formula_x,'interpreter','latex','FontSize',20);

% plot omega_y - Z
subplot(1,2,2);
p_3 = plot(z_1,omega_y,'LineWidth',3);
xlim([zrange_y(1),zrange_y(length(zrange_y))]);
ylim(omega_range);
hold on;
p_4 = plot(zrange_y,omega_y_cf_p,'r--','LineWidth',3);
plot(zrange_y,omega_y_cf_n,'r--','LineWidth',3);
line([zrange_y(1),zrange_y(length(zrange_y))],[0,0]);
line([ycoeffs(1),ycoeffs(1)],omega_range);
hold off;
set(get(gca, 'XLabel'), 'String', '$Z/cm$','interpreter','latex','FontSize',20);
set(get(gca, 'YLabel'), 'String', '$\omega_y/\mu m$','interpreter','latex','FontSize',20);
set(get(gca, 'Title'), 'String', '\omega_y-Z曲线','FontSize',20);
legend([p_3 p_4],{'原始数据','双曲线拟合'},'interpreter','latex','FontSize',20);

formula_z_2= sprintf('$\\leftarrow Z = %f$',ycoeffs(1));
gtext(formula_z_2,'interpreter','latex','FontSize',20);
formula_y = sprintf('$\\leftarrow \\frac{\\omega_y^2}{%f^2}- \\frac{(Z-%f)^2}{%f^2}=1$',ycoeffs(3),ycoeffs(1),ycoeffs(2));
gtext(formula_y,'interpreter','latex','FontSize',20);

print(gcf,'img.png','-dpng','-r600');



