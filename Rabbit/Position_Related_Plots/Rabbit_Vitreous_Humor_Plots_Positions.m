clear variables
clc

%% Top Vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Top_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D75';
tcalc1 = xlsread(filename,sheet,trange);

%Experimental data
%Bakri et al.
trange = 'A5:A9';
yrange = 'B5:B9';
devrange = 'C5:C9';
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange);
stdv1 = xlsread(filename,sheet,devrange);

%Sinapis et al.
trange = 'A13:A18';
yrange = 'B13:B18';
devrange = 'C13:C18';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);
stdv2 = xlsread(filename,sheet,devrange);

%Nomoto et al.
trange = 'A24:A26';
yrange = 'B24:B26';
devrange = 'C24:C26';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);
stdv3 = xlsread(filename,sheet,devrange);

%Ye et al.
trange = 'A31:A35';
yrange = 'B31:B35';
devrange = 'C31:C35';
texp4 = xlsread(filename,sheet,trange);
y_exp4 = xlsread(filename,sheet,yrange);
stdv4 = xlsread(filename,sheet,devrange);

%Ahn et al. (2013)
trange = 'A40:A44';
yrange = 'B40:B44';
devrange = 'C40:C44';
texp5 = xlsread(filename,sheet,trange);
y_exp5 = xlsread(filename,sheet,yrange);
stdv5 = xlsread(filename,sheet,devrange);

%Case 1a
yrange = 'E5:E75';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H75';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K75';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N75';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,3,1)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'diamond','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'square','LineWidth',4)
plot(texp4,y_exp4,'+','LineWidth',4)
errorbar(texp5,y_exp5,stdv5,'^','LineWidth',4)
newcolors = ["#D95319" "#7E2F8E" "#77AC30" 	"#0072BD" "#EDB120"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 30, 0 900])
legend('Case 1a', 'Case 1b','Case 2a', 'Case 2b','Bakri et al. (2007)','Sinapis et al. (2011)', 'Nomoto et al. (2009)','Ye et al. (2015)','Ahn et al. (2013)','FontName','Arial','FontSize',10)
hold off

%% Mid vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Middle_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D75';
tcalc1 = xlsread(filename,sheet,trange);


%Case 1a
yrange = 'E5:E75';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H75';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K75';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N75';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,3,2)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'diamond','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'square','LineWidth',4)
plot(texp4,y_exp4,'+','LineWidth',4)
errorbar(texp5,y_exp5,stdv5,'^','LineWidth',4)
newcolors = ["#D95319" "#7E2F8E" "#77AC30" 	"#0072BD" "#EDB120"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 30, 0 900])
legend('Case 1a', 'Case 1b','Case 2a', 'Case 2b','Bakri et al. (2007)','Sinapis et al. (2011)', 'Nomoto et al. (2009)','Ye et al. (2015)','Ahn et al. (2013)','FontName','Arial','FontSize',10)
hold off

%% Bottom Vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Bottom_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D75';
tcalc1 = xlsread(filename,sheet,trange);


%Case 1a
yrange = 'E5:E75';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H75';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K75';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N75';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,3,3)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
errorbar (texp1,y_exp1,stdv1,'o','LineWidth',4)
errorbar(texp2,y_exp2,stdv2,'diamond','LineWidth',4)
errorbar(texp3,y_exp3,stdv3,'square','LineWidth',4)
plot(texp4,y_exp4,'+','LineWidth',4)
errorbar(texp5,y_exp5,stdv5,'^','LineWidth',4)
newcolors = ["#D95319" "#7E2F8E" "#77AC30" 	"#0072BD" "#EDB120"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 30, 0 900])
legend('Case 1a', 'Case 1b','Case 2a', 'Case 2b','Bakri et al. (2007)','Sinapis et al. (2011)', 'Nomoto et al. (2009)','Ye et al. (2015)','Ahn et al. (2013)','FontName','Arial','FontSize',10)
hold off