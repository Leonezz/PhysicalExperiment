dp = [110,130,150,170,190,210,230,250,270,290];
p = 70;
N = [10,14,19,23,28,32,36,42,46,50];
dp = dp-p;

plot(dp,N);
set(get(gca, 'Title'), 'String', 'N-\Delta pÇúÏß');
set(get(gca, 'XLabel'), 'String', '\Delta p');
set(get(gca, 'YLabel'), 'String', 'N');
legend('N = 0.2248*dp+0.7697');