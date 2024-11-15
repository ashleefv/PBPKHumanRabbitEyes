clear variables
clc

%% Normalization
c0 = 856.5318; %Initial bevacizumab concentration in the vitreous

%% Middle Vitreous Slow
filename = 'Rabbit_Vitreous_Humor_Results_Middle_Vitreous_Slow.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D85';
tcalc1 = xlsread(filename,sheet,trange);

%Experimental data
%Bakri et al.
trange = 'A5:A9';
yrange = 'B5:B9';
devrange = 'C5:C9';
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange)./c0;
stdv1 = xlsread(filename,sheet,devrange)./c0;

%Nomoto et al.
trange = 'A24:A26';
yrange = 'B24:B26';
devrange = 'C24:C26';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange)./c0;
stdv2 = xlsread(filename,sheet,devrange)./c0;

%Sinapis et al.
trange = 'A13:A18';
yrange = 'B13:B18';
devrange = 'C13:C18';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange)./c0;
stdv3 = xlsread(filename,sheet,devrange)./c0;

%Ahn et al. (2013)
trange = 'A40:A44';
yrange = 'B40:B44';
devrange = 'C40:C44';
texp4 = xlsread(filename,sheet,trange);
y_exp4 = xlsread(filename,sheet,yrange)./c0;
stdv4 = xlsread(filename,sheet,devrange)./c0;

%Ye et al.
trange = 'A31:A35';
yrange = 'B31:B35';
devrange = 'C31:C35';
texp5 = xlsread(filename,sheet,trange);
y_exp5 = xlsread(filename,sheet,yrange)./c0;
stdv5 = xlsread(filename,sheet,devrange)./c0;

%Case 1a
yrange = 'E5:E85';
y_calc_1a = xlsread(filename,sheet,yrange)./c0;

%Case 1b
yrange = 'H5:H85';
y_calc_1b = xlsread(filename,sheet,yrange)./c0;

%Case 2a
yrange = 'K5:K85';
y_calc_2a = xlsread(filename,sheet,yrange)./c0;

%Case 2b
yrange = 'N5:N85';
y_calc_2b = xlsread(filename,sheet,yrange)./c0;

subplot(1,2,1)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'square','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'diamond','LineWidth',4)
errorbar(texp4,y_exp4,stdv4,'^','LineWidth',4)
plot(texp5,y_exp5,'+','LineWidth',4)
newcolors = ["#7E2F8E" "#D95319" "#0072BD" "#77AC30" "#EDB120"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Normalized vitreous concentration','FontName','Arial','FontSize',14)
axis([0 40, 0 1])
hold off

%% Middle vitreous fast
filename = 'Rabbit_Vitreous_Humor_Results_Middle_Vitreous_Fast.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D85';
tcalc1 = xlsread(filename,sheet,trange);

%Case 1a
yrange = 'E5:E85';
y_calc_1a = xlsread(filename,sheet,yrange)./c0;

%Case 1b
yrange = 'H5:H85';
y_calc_1b = xlsread(filename,sheet,yrange)./c0;

%Case 2a
yrange = 'K5:K85';
y_calc_2a = xlsread(filename,sheet,yrange)./c0;

%Case 2b
yrange = 'N5:N85';
y_calc_2b = xlsread(filename,sheet,yrange)./c0;

subplot(1,2,2)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'square','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'diamond','LineWidth',4)
errorbar(texp4,y_exp4,stdv4,'^','LineWidth',4)
plot(texp5,y_exp5,'+','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 40, 0 1])
hold off

%Overall legend
legend('Case 1a', 'Case 1b','Case 2a', 'Case 2b','Bakri et al. (2007)', 'Nomoto et al. (2009)','Sinapis et al. (2011)', 'Ahn et al. (2013)','Ye et al. (2015)','FontName','Arial','FontSize',10)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');