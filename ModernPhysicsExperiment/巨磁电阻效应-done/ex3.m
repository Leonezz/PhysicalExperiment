close all;clear;
I=zeros(1,12);
for i=1:12
    I(i)=I(i)+0.5*(i-1);
end

%% 杩欓噷鏄嚜宸卞疄楠岀數鍘嬭〃杈撳嚭V鏁版嵁
V=[0,0.0006,0.0014,0.0022,0.0029,0.0037,0.0045,0.0052,0.0060,0.0068,0.0075,0.0083];

plot(I,V);
grid on;
xlabel('I/A');
ylabel('V/V');
title('传感器输出电压V--被测电流I');

saveas(gcf,'plot3.png','png');