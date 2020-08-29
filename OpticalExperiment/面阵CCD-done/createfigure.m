function createfigure(X1, Y1, Y2, Y3, Y4, Y5)
%CREATEFIGURE(X1, Y1, Y2, Y3, Y4, Y5)
%  X1:  x ���ݵ�����
%  Y1:  y ���ݵ�����
%  Y2:  y ���ݵ�����
%  Y3:  y ���ݵ�����
%  Y4:  y ���ݵ�����
%  Y5:  y ���ݵ�����

%  �� MATLAB �� 07-Nov-2019 14:28:51 �Զ�����

% ���� figure
figure1 = figure('WindowState','maximized');

% ���� axes
axes1 = axes('Parent',figure1,...
    'Position',[0.13 0.787537537537538 0.775 0.201951951951952]);
hold(axes1,'on');

% ���� plot
plot(X1,Y1,'DisplayName','sh','Parent',axes1,'LineWidth',3);

% ���� xlabel
xlabel(' ','FontSize',15);

% ȡ�������е�ע���Ա����������� Y ��Χ
% ylim(axes1,[-15 35]);
box(axes1,'on');
% ������������������
set(axes1,'FontSize',15,'GridAlpha',1,'GridColor',[0 0 0],'GridLineStyle',...
    '--','Layer','top','LineWidth',1.5,'XGrid','on');
% ���� legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',24);

% ���� axes
axes2 = axes('Parent',figure1,...
    'Position',[0.13 0.586336336336336 0.775 0.201951951951952]);
hold(axes2,'on');

% ���� plot
plot(X1,Y2,'DisplayName','V_1','Parent',axes2,'LineWidth',3);

% ���� xlabel
xlabel(' ','FontSize',15);

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes2,[-63.8056214843163 199936.194378516]);
% ȡ�������е�ע���Ա����������� Y ��Χ
% ylim(axes2,[-25.9514007400752 24.0485992599248]);
box(axes2,'on');
% ������������������
set(axes2,'FontSize',15,'GridAlpha',1,'GridLineStyle','--','Layer','top',...
    'LineWidth',1.5,'MinorGridAlpha',1,'XGrid','on');
% ���� legend
legend2 = legend(axes2,'show');
set(legend2,'FontSize',24);

% ���� axes
axes3 = axes('Parent',figure1,...
    'Position',[0.13 0.399399399399399 0.775 0.188438438438438]);
hold(axes3,'on');

% ���� plot
plot(X1,Y3,'DisplayName','V_2','Parent',axes3,'LineWidth',3);

% ���� xlabel
xlabel(' ','FontSize',15);

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes3,[1.67921232474555e-11 200000]);
% ȡ�������е�ע���Ա����������� Y ��Χ
% ylim(axes3,[-25.9561752988048 24.0438247011952]);
box(axes3,'on');
% ������������������
set(axes3,'FontSize',15,'GridAlpha',1,'GridLineStyle','--','LineWidth',1.5,...
    'XGrid','on');
% ���� legend
legend3 = legend(axes3,'show');
set(legend3,'FontSize',24);

% ���� axes
axes4 = axes('Parent',figure1,...
    'Position',[0.13 0.217717717717718 0.775 0.182432432432432]);
hold(axes4,'on');

% ���� plot
plot(X1,Y4,'DisplayName','V_3','Parent',axes4,'LineWidth',3);

% ���� xlabel
xlabel(' ','FontSize',15);

% ȡ�������е�ע���Ա����������� Y ��Χ
% ylim(axes4,[-15 35]);
box(axes4,'on');
% ������������������
set(axes4,'FontSize',15,'GridAlpha',1,'GridLineStyle','--','LineWidth',1.5,...
    'XGrid','on');
% ���� legend
legend4 = legend(axes4,'show');
set(legend4,'FontSize',24);

% ���� axes
axes5 = axes('Parent',figure1,...
    'Position',[0.13 0.0487987987987988 0.775 0.16966966966967]);
hold(axes5,'on');

% ���� plot
plot(X1,Y5,'DisplayName','V_4','Parent',axes5,'LineWidth',3);

% ���� ylabel
ylabel('v/v','FontSize',18);

% ���� xlabel
xlabel('t/ns','FontSize',18);

% ȡ�������е�ע���Ա����������� Y ��Χ
% ylim(axes5,[-15 35]);
box(axes5,'on');
% ������������������
set(axes5,'FontSize',15,'GridLineStyle','--','Layer','top','LineWidth',1.5,...
    'XGrid','on');
% ���� legend
legend5 = legend(axes5,'show');
set(legend5,'FontSize',24);

