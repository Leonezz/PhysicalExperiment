A = zeros(1,23);
for i = 2:length(A)
    A(i) = A(i-1)+50;
end

P = [0.254,0.174,0.109,0.064,0.039,0.080,0.186,0.283,0.378,0.516,0.682,0.875,1.101,1.3,1.48,1.671,1.867,1.99,2.15,2.25,2.28,2.23,2.16];

plot(A,P,'LineWidth',3)
set(get(gca, 'Title'), 'String', 'P-U曲线');
set(get(gca, 'XLabel'), 'String', '电压/v');
set(get(gca, 'YLabel'), 'String', '功率/mW');