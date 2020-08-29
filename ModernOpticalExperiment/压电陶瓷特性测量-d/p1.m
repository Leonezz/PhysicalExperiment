A = zeros(1,8);
for i = 2:length(A)
    A(i) = A(i-1)+1;
end

p = [16,56,97,127,153,181,210,230];
p_r = [230,187,152,123,91,68,38,17];

A_cf = p*0.03265-0.8671;
A_r_cf = p_r*(-0.03304)+7.242;

subplot(1,2,1);
plot(p,A,'-',p,A_cf,'--','LineWidth',3);
xlim([16,230]);
legend('原始数据','线性拟合','FontSize',24);
gtext('y = 0.03265\times x - 0.8671','FontSize',22);
set(get(gca, 'Title'), 'String', '电压-位移曲线(正向移动)','FontSize',24);
set(get(gca, 'XLabel'), 'String', '电压/V','FontSize',24);
set(get(gca, 'YLabel'), 'String', '位移','FontSize',24);
subplot(1,2,2);
plot(p_r,A,'-',p_r,A_r_cf,'--','LineWidth',3);
xlim([17,230]);
legend('原始数据','线性拟合','FontSize',24);
gtext('y = -0.03304\times x + 7.242','FontSize',22);
set(get(gca, 'Title'), 'String', '电压-位移曲线(反向移动)','FontSize',24);
set(get(gca, 'XLabel'), 'String', '电压/V','FontSize',24);
set(get(gca, 'YLabel'), 'String', '位移','FontSize',24);