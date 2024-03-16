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
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange);

%Sinapis et al.
trange = 'A13:A18';
yrange = 'B13:B18';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);

%Nomoto et al.
trange = 'A24:A26';
yrange = 'B24:B26';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);

%Ye et al.
trange = 'A31:A35';
yrange = 'B31:B35';
texp4 = xlsread(filename,sheet,trange);
y_exp4 = xlsread(filename,sheet,yrange);

%Ahn et al. (2013)
trange = 'A40:A44';
yrange = 'B40:B44';
texp5 = xlsread(filename,sheet,trange);
y_exp5 = xlsread(filename,sheet,yrange);

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
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'y',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b',texp1,y_exp1,'ok',texp2,y_exp2,'diamondg',texp3,y_exp3,'square',texp4,y_exp4,'+m',texp5,y_exp5,'^','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 30, 0 900])
legend('Case 1a', 'Case1b','Case 2a', 'Case2b','Bakri et al. (2007)','Sinapis et al. (2011)', 'Nomoto et al. (2009)','Ye et al. (2015)','Ahn et al. (2013)','FontName','Arial','FontSize',10)

%% Mid vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Middle_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D75';
tcalc1 = xlsread(filename,sheet,trange);

%Experimental data
%Bakri et al.
trange = 'A5:A9';
yrange = 'B5:B9';
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange);

%Sinapis et al.
trange = 'A13:A18';
yrange = 'B13:B18';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);

%Nomoto et al.
trange = 'A24:A26';
yrange = 'B24:B26';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);

%Ye et al.
trange = 'A31:A35';
yrange = 'B31:B35';
texp4 = xlsread(filename,sheet,trange);
y_exp4 = xlsread(filename,sheet,yrange);

%Ahn et al. (2013)
trange = 'A40:A44';
yrange = 'B40:B44';
texp5 = xlsread(filename,sheet,trange);
y_exp5 = xlsread(filename,sheet,yrange);

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
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'y',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b',texp1,y_exp1,'ok',texp2,y_exp2,'diamondg',texp3,y_exp3,'square',texp4,y_exp4,'+m',texp5,y_exp5,'^','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 30, 0 900])
legend('Case 1a', 'Case1b','Case 2a', 'Case2b','Bakri et al. (2007)','Sinapis et al. (2011)', 'Nomoto et al. (2009)','Ye et al. (2015)','Ahn et al. (2013)','FontName','Arial','FontSize',10)

%% Bottom Vitreous
filename = 'Rabbit_Vitreous_Humor_Results_Bottom_Vitreous.xlsx';
sheet = 1;

%Calculated time points
trange = 'D5:D75';
tcalc1 = xlsread(filename,sheet,trange);

%Experimental data
%Bakri et al.
trange = 'A5:A9';
yrange = 'B5:B9';
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange);

%Sinapis et al.
trange = 'A13:A18';
yrange = 'B13:B18';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);

%Nomoto et al.
trange = 'A24:A26';
yrange = 'B24:B26';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);

%Ye et al.
trange = 'A31:A35';
yrange = 'B31:B35';
texp4 = xlsread(filename,sheet,trange);
y_exp4 = xlsread(filename,sheet,yrange);

%Ahn et al. (2013)
trange = 'A40:A44';
yrange = 'B40:B44';
texp5 = xlsread(filename,sheet,trange);
y_exp5 = xlsread(filename,sheet,yrange);

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
plot(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'y',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b',texp1,y_exp1,'ok',texp2,y_exp2,'diamondg',texp3,y_exp3,'square',texp4,y_exp4,'+m',texp5,y_exp5,'^','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 30, 0 900])
legend('Case 1a', 'Case1b','Case 2a', 'Case2b','Bakri et al. (2007)','Sinapis et al. (2011)', 'Nomoto et al. (2009)','Ye et al. (2015)','Ahn et al. (2013)','FontName','Arial','FontSize',10)
