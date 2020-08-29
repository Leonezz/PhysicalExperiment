close all;clear;
I=zeros(1,12);
for i=1:12
    I(i)=I(i)+0.5*(i-1);
end

%% 这里是自己实验电压表输出V数据
V=[0,0.0006,0.0014,0.0022,0.0029,0.0037,0.0045,0.0052,0.0060,0.0068,0.0075,0.0083];

plot(I,V);
grid on;
xlabel('I/A');
ylabel('V/V');
title('�����������ѹV--�������I');

saveas(gcf,'plot3.png','png');