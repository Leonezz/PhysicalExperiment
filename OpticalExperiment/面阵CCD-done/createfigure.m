function createfigure(X1, Y1, Y2, Y3, Y4, Y5)
%CREATEFIGURE(X1, Y1, Y2, Y3, Y4, Y5)
%  X1:  x 数据的向量
%  Y1:  y 数据的向量
%  Y2:  y 数据的向量
%  Y3:  y 数据的向量
%  Y4:  y 数据的向量
%  Y5:  y 数据的向量

%  由 MATLAB 于 07-Nov-2019 14:28:51 自动生成

% 创建 figure
figure1 = figure('WindowState','maximized');

% 创建 axes
axes1 = axes('Parent',figure1,...
    'Position',[0.13 0.787537537537538 0.775 0.201951951951952]);
hold(axes1,'on');

% 创建 plot
plot(X1,Y1,'DisplayName','sh','Parent',axes1,'LineWidth',3);

% 创建 xlabel
xlabel(' ','FontSize',15);

% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes1,[-15 35]);
box(axes1,'on');
% 设置其余坐标区属性
set(axes1,'FontSize',15,'GridAlpha',1,'GridColor',[0 0 0],'GridLineStyle',...
    '--','Layer','top','LineWidth',1.5,'XGrid','on');
% 创建 legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',24);

% 创建 axes
axes2 = axes('Parent',figure1,...
    'Position',[0.13 0.586336336336336 0.775 0.201951951951952]);
hold(axes2,'on');

% 创建 plot
plot(X1,Y2,'DisplayName','V_1','Parent',axes2,'LineWidth',3);

% 创建 xlabel
xlabel(' ','FontSize',15);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes2,[-63.8056214843163 199936.194378516]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes2,[-25.9514007400752 24.0485992599248]);
box(axes2,'on');
% 设置其余坐标区属性
set(axes2,'FontSize',15,'GridAlpha',1,'GridLineStyle','--','Layer','top',...
    'LineWidth',1.5,'MinorGridAlpha',1,'XGrid','on');
% 创建 legend
legend2 = legend(axes2,'show');
set(legend2,'FontSize',24);

% 创建 axes
axes3 = axes('Parent',figure1,...
    'Position',[0.13 0.399399399399399 0.775 0.188438438438438]);
hold(axes3,'on');

% 创建 plot
plot(X1,Y3,'DisplayName','V_2','Parent',axes3,'LineWidth',3);

% 创建 xlabel
xlabel(' ','FontSize',15);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes3,[1.67921232474555e-11 200000]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes3,[-25.9561752988048 24.0438247011952]);
box(axes3,'on');
% 设置其余坐标区属性
set(axes3,'FontSize',15,'GridAlpha',1,'GridLineStyle','--','LineWidth',1.5,...
    'XGrid','on');
% 创建 legend
legend3 = legend(axes3,'show');
set(legend3,'FontSize',24);

% 创建 axes
axes4 = axes('Parent',figure1,...
    'Position',[0.13 0.217717717717718 0.775 0.182432432432432]);
hold(axes4,'on');

% 创建 plot
plot(X1,Y4,'DisplayName','V_3','Parent',axes4,'LineWidth',3);

% 创建 xlabel
xlabel(' ','FontSize',15);

% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes4,[-15 35]);
box(axes4,'on');
% 设置其余坐标区属性
set(axes4,'FontSize',15,'GridAlpha',1,'GridLineStyle','--','LineWidth',1.5,...
    'XGrid','on');
% 创建 legend
legend4 = legend(axes4,'show');
set(legend4,'FontSize',24);

% 创建 axes
axes5 = axes('Parent',figure1,...
    'Position',[0.13 0.0487987987987988 0.775 0.16966966966967]);
hold(axes5,'on');

% 创建 plot
plot(X1,Y5,'DisplayName','V_4','Parent',axes5,'LineWidth',3);

% 创建 ylabel
ylabel('v/v','FontSize',18);

% 创建 xlabel
xlabel('t/ns','FontSize',18);

% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes5,[-15 35]);
box(axes5,'on');
% 设置其余坐标区属性
set(axes5,'FontSize',15,'GridLineStyle','--','Layer','top','LineWidth',1.5,...
    'XGrid','on');
% 创建 legend
legend5 = legend(axes5,'show');
set(legend5,'FontSize',24);

