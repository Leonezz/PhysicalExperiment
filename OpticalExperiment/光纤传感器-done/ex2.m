close all;clc;clear;
lamda_0=1551.6;
bate=-0.3397;

K_1 = [6.121,6.212,6.316,6.537,6.743,6.839,6.890,6.930,6.980,7.021,7.077,7.130,7.169,7.201,7.240,7.323,7.402,7.468,7.538,7.600];
V_1 = [0.1,4.2,10,17.9,27,34,35.9,37.0,38.0,38.6,37.6,35.9,33.4,30.6,27.5,20.7,14.2,9.1,4.0,0.2];
L_1=bate*K_1+lamda_0;

K_2 = [5.409,5.548,5.680,5.772,5.875,6.032,6.149,6.190,6.218,6.256,6.278,6.300,6.326,6.356,6.408,6.478,6.507,6.533,6.622,6.709,6.778,6.940];
V_2 = [01,2.0,6.6,12.5,19.8,24,30,33.6,35.5,37,38,39.1,39.8,38.8,37.6,36.6,36,34.2,25.3,16.9,9.5,0.1];
L_2=bate*K_2+lamda_0;

K_3 = [4.715,4.795,5.051,5.181,5.280,5.361,5.385,5.562,5.609,5.636,5.675,5.682,5.720,5.732,5.740,5.749,5.775,5.830,5.940,6.071,6.200];
V_3 = [0.1,5.5,13.8,19.7,29,35.8,36.9,38.2,39,40.2,41.1,39.8,38,37,36,34.8,29.6,21.9,16.2,8.9,0.2];
L_3=bate*K_3+lamda_0;

figure;
set(gcf, 'position', [0 0 1200 700]);
ax_1 = subplot(2,2,1);
plot(L_1,V_1);
grid on;
hold on;
title('18.5℃下波长--光强曲线');
[my_1,mx_1]=findpeaks(V_1);
plot(L_1(mx_1),my_1,'ro');
hold off;

ax_2 = subplot(2,2,2);
plot(L_2,V_2);
hold on;
grid on;
title('28.6℃下波长--光强曲线');
[my_2,mx_2]=findpeaks(V_2);
plot(L_2(mx_2),my_2,'ro');
hold off;

ax_3 = subplot(2,2,3);
plot(L_3,V_3);
grid on;
hold on;
title('38.6℃下波长--光强曲线');
[my_3,mx_3]=findpeaks(V_3);
plot(L_3(mx_3),my_3,'ro');
hold off;

ax_4 = subplot(2,2,4);
plot(L_1,V_1,'--',L_2,V_2,'-o',L_3,V_3,'-');
hold on;
xlabel('波长λ/nm');
ylabel('光强V/mV');
title('波长--光强曲线');
plot(L_1(mx_1),my_1,'ro');
plot(L_2(mx_2),my_2,'ro');
plot(L_3(mx_3),my_3,'ro');
plot([L_1(mx_1),L_1(mx_1)],[my_1,0],'--');
plot([L_2(mx_2),L_2(mx_2)],[my_2,0],'--');
plot([L_3(mx_3),L_3(mx_3)],[my_3,0],'--');

saveas(gcf,'plot2.png','png');

legend(ax_1,{'18.5℃'});
legend(ax_2,{'28.6℃'});
legend(ax_3,{'38.6℃'});
legend(ax_4,{'18.5℃','28.6℃','38.6℃'})