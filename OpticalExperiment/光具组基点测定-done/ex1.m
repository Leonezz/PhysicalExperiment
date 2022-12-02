d = [20,30,40];
f = [33,40,43];
plot(d,f);
set(get(gca, 'Title'), 'String', '焦距f--透镜组间距d曲线');
set(get(gca, 'XLabel'), 'String', '透镜组间距f/mm');
set(get(gca, 'YLabel'), 'String', '透镜组焦距f/mm');
saveas(gca,'plot4.png','png');
