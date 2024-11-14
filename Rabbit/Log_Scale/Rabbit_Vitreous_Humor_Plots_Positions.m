clear variables
clc

%% Anterior Vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Anterior_Vitreous.xlsx';
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
y_exp1 = xlsread(filename,sheet,yrange);
stdv1 = xlsread(filename,sheet,devrange);

%Nomoto et al.
trange = 'A24:A26';
yrange = 'B24:B26';
devrange = 'C24:C26';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);
stdv2 = xlsread(filename,sheet,devrange);

%Sinapis et al.
trange = 'A13:A18';
yrange = 'B13:B18';
devrange = 'C13:C18';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);
stdv3 = xlsread(filename,sheet,devrange);

%Ahn et al. (2013)
trange = 'A40:A44';
yrange = 'B40:B44';
devrange = 'C40:C44';
texp4 = xlsread(filename,sheet,trange);
y_exp4 = xlsread(filename,sheet,yrange);
stdv4 = xlsread(filename,sheet,devrange);

%Ye et al.
trange = 'A31:A35';
yrange = 'B31:B35';
devrange = 'C31:C35';
texp5 = xlsread(filename,sheet,trange);
y_exp5 = xlsread(filename,sheet,yrange);
stdv5 = xlsread(filename,sheet,devrange);

%Case 1a
yrange = 'E5:E85';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H85';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K85';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N85';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,3,1)
semilogy(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
hold on
box on
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'square','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'diamond','LineWidth',4)
errorbar(texp4,y_exp4,stdv4,'^','LineWidth',4)
semilogy(texp5,y_exp5,'+','LineWidth',4)
newcolors = ["#7E2F8E" "#D95319" "#0072BD" "#77AC30" "#EDB120"];
colororder(newcolors)
yline (2.6,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Vitreous concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 40, 0.1 1000])
hold off

%% Mid vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Middle_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D85';
tcalc1 = xlsread(filename,sheet,trange);


%Case 1a
yrange = 'E5:E85';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H85';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K85';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N85';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,3,2)
semilogy(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
hold on
box on
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'square','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'diamond','LineWidth',4)
errorbar(texp4,y_exp4,stdv4,'^','LineWidth',4)
semilogy(texp5,y_exp5,'+','LineWidth',4)
yline (2.6,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 40, 0.1 1000])
hold off

%% Posterior Vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Posterior_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D85';
tcalc1 = xlsread(filename,sheet,trange);


%Case 1a
yrange = 'E5:E85';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H85';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K85';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N85';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,3,3)
semilogy(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
hold on
box on
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'square','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'diamond','LineWidth',4)
errorbar(texp4,y_exp4,stdv4,'^','LineWidth',4)
semilogy(texp5,y_exp5,'+','LineWidth',4)
yline (2.6,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 40, 0.1 1000])
hold off

%Overall legend
legend('Case 1a', 'Case 1b','Case 2a', 'Case 2b','Bakri et al. (2007)', 'Nomoto et al. (2009)','Sinapis et al. (2011)', 'Ahn et al. (2013)','Ye et al. (2015)','2.6 \mug/mL = C_v \it{in vivo} threshold','FontName','Arial','FontSize',8)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');