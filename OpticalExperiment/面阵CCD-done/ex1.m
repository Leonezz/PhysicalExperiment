sh = pwm(1808,64000,2,34,9);
v_1 = pwm(1899,64000,2,1.8,-10);
v_1 = [pwm(520,520,1,1.8,0),v_1(521:(length(v_1)-520))];

v_2 = pwm(6212,64000,2,1.6,-10.4);
v_2 = [pwm(740,740,1,-10.4,0),v_2(741:length(v_2)-740)];

v_3 = pwm(3172,64000,2,1.8,-10.8);
v_3 = [pwm(120,120,1,-10.8,0),v_3(121:length(v_3)-120)];

v_4 = pwm(3171,64000,2,1.6,-10.6);
v_4 = [pwm(1820,1820,1,1.6,0),v_4(1821:length(v_4)-1820)];
x = 1:192000;

figure(1);

subplot(5,1,1);
plot(x,sh,'LineWidth',3);
set(gca,'FontSize',15);
xlabel(' ','FontSize',15);
ylim([-15 35]);
legend('sh');
ax = gca;
ax.LineWidth = 1.5;

subplot(5,1,2);
plot(x,v_1,'LineWidth',3);

ax = gca;
ax.LineWidth = 1.5;

set(gca,'FontSize',15);
xlabel(' ','FontSize',15);
ylim([-15 35]);
legend('V_1');

subplot(5,1,3);
plot(x,v_2,'LineWidth',3);

ax = gca;
ax.LineWidth = 1.5;

set(gca,'FontSize',15);
xlabel(' ','FontSize',15);
ylim([-15 35]);
legend('V_2');

subplot(5,1,4);
plot(x,v_3,'LineWidth',3);

ax = gca;
ax.LineWidth = 1.5;

set(gca,'FontSize',15);
xlabel(' ','FontSize',15);
ylim([-15 35]);
legend('V_3');

subplot(5,1,5);
plot(x,v_4,'LineWidth',3);

ax = gca;
ax.LineWidth = 1.5;

set(gca,'FontSize',15);
ylim([-15 35]);
xlabel('t/ns','FontSize',15);
ylabel('v/v');
legend('V_4');




