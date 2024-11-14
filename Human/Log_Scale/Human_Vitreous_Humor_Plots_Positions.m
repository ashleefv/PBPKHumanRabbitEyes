clear variables
clc

%% Anterior vitreous

filename = 'Human_Vitreous_Humor_Results_Anterior_Vitreous.xlsx';
sheet = 1; 

%Calculated time points
trange = 'D5:D205';
tcalc1 = xlsread(filename,sheet,trange);

%Experimental data
%Beer et al. (2006). Patient 1
trange = 'A20';
yrange = 'B20';
texp1 = xlsread(filename,sheet,trange);
y_exp1 = xlsread(filename,sheet,yrange);

%Beer et al. (2006). Patient 2
trange = 'A23';
yrange = 'B23';
texp2 = xlsread(filename,sheet,trange);
y_exp2 = xlsread(filename,sheet,yrange);

%Zhu et al. (2008)
trange = 'A5:A15';
yrange = 'B5:B15';
texp3 = xlsread(filename,sheet,trange);
y_exp3 = xlsread(filename,sheet,yrange);

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

figure()
subplot(1,3,1)
semilogy(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
hold on
box on
semilogy(texp1,y_exp1,'^',texp2,y_exp2,'diamond',texp3,y_exp3,'o','LineWidth',4)
newcolors = ["#EDB120" "#77AC30" "#D95319"];
colororder(newcolors)
yline (2.6,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Vitreous concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 100, 0.001 1000])
hold off

%% Middle vitreous

filename = 'Human_Vitreous_Humor_Results_Middle_Vitreous.xlsx';
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

subplot(1,3,2)
semilogy(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
hold on
box on
semilogy(texp1,y_exp1,'^',texp2,y_exp2,'diamond',texp3,y_exp3,'o','LineWidth',4)
yline (2.6,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 100, 0.001 1000])
hold off

%% Posterior vitreous

filename = 'Human_Vitreous_Humor_Results_Posterior_Vitreous.xlsx';
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

subplot(1,3,3)
semilogy(tcalc1,y_calc_1a,'c',tcalc1,y_calc_1b,'m',tcalc1,y_calc_2a,'--r',tcalc1,y_calc_2b,'--b','LineWidth',4)
hold on
box on
semilogy(texp1,y_exp1,'^',texp2,y_exp2,'diamond',texp3,y_exp3,'o','LineWidth',4)
yline (2.6,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 100, 0.001 1000])
hold off

%Overall legend
legend('Case 1a', 'Case 1b','Case 2a', 'Case 2b','Beer et al. (2006). Patient 1','Beer et al. (2006). Patient 2','Zhu et al. (2008)','2.6 \mug/mL = C_v \it{in vivo} threshold','FontName','Arial','FontSize',8)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');