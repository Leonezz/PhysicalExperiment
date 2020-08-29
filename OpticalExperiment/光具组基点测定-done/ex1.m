d = [20,30,40];
f = [33,40,43];
plot(d,f);
set(get(gca, 'Title'), 'String', '½¹¾àf--Í¸¾µ×é¼ä¾àdÇúÏß');
set(get(gca, 'XLabel'), 'String', 'Í¸¾µ×é¼ä¾àf/mm');
set(get(gca, 'YLabel'), 'String', 'Í¸¾µ×é½¹¾àf/mm');
saveas(gca,'plot4.png','png');
