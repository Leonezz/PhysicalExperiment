I = [0,0.2,0.4,0.6,0.8,1,1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3,3.2,3.4,3.6,3.8,4,4.2,4.4,4.6,4.8,5];
B = [0,72,155,218,301,356,435,505,586,656,735,793,866,931,1007,1064,1125,1185,1218,1261,1287,1318,1345,1366,1387,1412];
plot(I,B);
set(get(gca, 'XLabel'), 'String', '电流I/A');
set(get(gca, 'YLabel'), 'String', '磁场强度B/mT');