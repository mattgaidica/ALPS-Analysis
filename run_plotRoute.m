close all;

T = readtable('/Users/mattgaidica/Dropbox/Travel/2017 Alps/mygeodata/haute_route/route_points_updated.csv');
km = 188;

ln = [];
figure('position',[0 0 800 400]);
ln(1) = plot(linspace(0,km,numel(T.ele)),smooth(T.ele,30),'color','w','lineWidth',3);
hold on;
ln(2) = plot([0 km],[2500 2500],'k-.','LineWidth',.5,'color','w');
% % yyaxis left;
set(gca,'YColor','w');
ylim([1300,3000]);
yticks([1300,2500,3000]);
ylabel('altitude (m)');

% % yyaxis right;
% % ln(3) = plot([0 km],[0 100],'color',[233/255 101/255 43/355],'LineWidth',3);
% % ylim([0 100]);
% % yticks([]);
% % % ylabel('fatigue (%)');
% % set(gca,'YColor',[233/255 101/255 43/355]);

title('Haute Route Altitude Profile','color','w');
xlabel('distance (km)');
xlim([0 km]);
set(gca,'color',[70/255 116/255 193/255]);
set(gcf,'color',[70/255 116/255 193/255]);
set(gca,'fontSize',16);
set(gca,'YColor','w');
set(gca,'XColor','w');
grid on;

% % legend(ln,{'Altitude Profile','High Altitude Threshold','Fatigue Trend'});