d = [20,30,40];
f = [33,40,43];
plot(d,f);
set(get(gca, 'Title'), 'String', '����f--͸������d����');
set(get(gca, 'XLabel'), 'String', '͸������f/mm');
set(get(gca, 'YLabel'), 'String', '͸���齹��f/mm');
saveas(gca,'plot4.png','png');
