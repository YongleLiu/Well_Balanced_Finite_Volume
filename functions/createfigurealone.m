function createfigure(X1, Y1,times,number)
%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 24-Oct-2017 16:56:03

% Create figure
figure1 = figure('PaperOrientation','landscape','pos',[10 10 560 450],'PaperSize',[14 14]);
%figure1 = figure('PaperOrientation','landscape','PaperSize',[16 12]);

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
 xlim(axes1,[-3 3]);
 %ylim(axes1,[0 33]);
% Create plot
plot(X1,Y1,'DisplayName',times(4,:),'LineWidth',6,...
    'Color',[0.4863 0.0784 0.3020]);
    %'Color',[0.2524 0.3192 0.4551]);
yticks([0 7])
xticks([-2 0 2])
box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',45,'TickLabelInterpreter','latex','XGrid','on','YGrid',...
    'on');
% Create xlabel
%xlabel({'$$\sigma$$'},'FontSize',23,'Interpreter','latex');

% Create ylabel
%ylabel({'\rho'},'FontSize',20,'Rotation',0);
% Create legend
legend1 = legend(axes1,'show','Location','north');
set(legend1,'Interpreter','latex','FontSize',55);
% Create textarrow
% annotation(figure1,'textarrow',[0.033 0.1],...
%     [0.56 0.865459627329192],'TextEdgeColor','none',...
%     'FontSize',23,...
%     'FontName','TeX Gyre Bonum',...
%     'String',{'\rho'},...
%     'HeadStyle','none',...
%     'LineStyle','none');
%$$\frac{\delta \mathcal{F}}{\delta \rho}$$
%$$\rho$$
%$$\rho\,u$$

% annotation(figure1,'textarrow',[0.531649810366625 0.868],...
%     [0.04 0.265459627329192],'TextEdgeColor','none',...
%     'FontSize',18,...
%     'FontName','TeX Gyre Bonum',...
%     'String',{'x'},...
%     'HeadStyle','none',...
%     'LineStyle','none');

% This options are for images of presentations
set(gcf, 'PaperPosition', [0 0 15 15]); %Position plot at left hand corner with width 5 and height 5.
set(gcf, 'PaperSize', [15 15]); %Set the paper to have width 5 and height 5.
saveas(gcf, sprintf('density-detail-%d',number), 'pdf') 