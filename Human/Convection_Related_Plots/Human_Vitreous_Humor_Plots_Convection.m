clear variables
clc

%% Middle vitreous slow convection

filename = 'Human_Vitreous_Humor_Results_Middle_Vitreous_Slow.xlsx';
sheet = 1; 

%Experimental data

%Zhu et al. (2008)
trange = 'A5:A15';
yrange = 'B5:B15';
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange);

%Beer et al. (2006). Patient 1
trange = 'A20';
yrange = 'B20';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);

%Beer et al. (2006). Patient 2
trange = 'A23';
yrange = 'B23';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);

%Calculated time points
trange = 'D5:D205';
tcalc1 = xlsread(filename,sheet,trange);

%Case 1a
yrange = 'E5:E205';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H205';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K205';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N205';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,2,1)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
plot(texp1,y_exp1,'o',texp2,y_exp2,'^',texp3,y_exp3,'diamond','LineWidth',4)
newcolors = ["#D95319" "#EDB120" "#77AC30"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 100, 0 300])
legend('Case 1a', 'Case1b','Case 2a', 'Case2b','Zhu et al. (2008)','Beer et al. (2006). Patient 1','Beer et al. (2006). Patient 2','FontName','Arial','FontSize',10)
hold off

%% Middle vitreous fast convection

filename = 'Human_Vitreous_Humor_Results_Middle_Vitreous_Fast.xlsx';
sheet = 1; 

%Calculated time points
trange = 'D5:D205';
tcalc1 = xlsread(filename,sheet,trange);

%Case 1a
yrange = 'E5:E205';
y_calc_1a = xlsread(filename,sheet,yrange);

%Case 1b
yrange = 'H5:H205';
y_calc_1b = xlsread(filename,sheet,yrange);

%Case 2a
yrange = 'K5:K205';
y_calc_2a = xlsread(filename,sheet,yrange);

%Case 2b
yrange = 'N5:N205';
y_calc_2b = xlsread(filename,sheet,yrange);

subplot(1,2,2)
hold on
box on
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
plot(texp1,y_exp1,'o',texp2,y_exp2,'^',texp3,y_exp3,'diamond','LineWidth',4)
newcolors = ["#D95319" "#EDB120" "#77AC30"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 100, 0 300])
legend('Case 1a', 'Case1b','Case 2a', 'Case2b','Zhu et al. (2008)','Beer et al. (2006). Patient 1','Beer et al. (2006). Patient 2','FontName','Arial','FontSize',10)
hold off
