A = zeros(1,29);
A(1) = 12;
for i = 2:length(A)
    A(i) = A(i-1)+2;
end

P = [0.3,0.3,0.3,0.4,0.5,0.5,0.6,0.7,0.8,1.0,1.2,1.3,1.4,1.5,1.5,1.5,1.4,1.3,1.2,1.0,0.8,0.7,0.6,0.5,0.4,0.3,0.3,0.2,0.2];

plot(A,P,'LineWidth',3)
set(get(gca, 'Title'), 'String', 'LED发散角');
set(get(gca, 'XLabel'), 'String', '角度/^o');
set(get(gca, 'YLabel'), 'String', '功率/mW');