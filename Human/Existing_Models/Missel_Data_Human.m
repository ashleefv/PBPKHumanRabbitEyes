clear variables
clc

%Other model data
filename = 'Missel_Data_Human.csv';
sheet = 1; 
trange = 'A2:A57';
yrange = 'B2:B57';
tmod = xlsread(filename,sheet,trange);
ymod = xlsread(filename,sheet,yrange);
ymod_smooth = smooth(smooth(ymod));

%Zhu et al.
trange = 'D3:D13';
yrange = 'E3:E13';
texp1 = xlsread(filename,sheet,trange);
yexp1 = xlsread(filename,sheet,yrange);


%% THIS IS FOR THE ANTERIOR INJECTION CASE

%Case 1a
tcalc = 'H4:H203';
ycalc1a = 'I4:I203';
tcalc = xlsread(filename,sheet,tcalc);
ycalc1a = xlsread(filename,sheet,ycalc1a);

%Case 2a
ycalc1b = 'L4:L203';
ycalc1b = xlsread(filename,sheet,ycalc1b);

%Case 2a
ycalc2a = 'O4:O203';
ycalc2a = xlsread(filename,sheet,ycalc2a);

%Case 2b
ycalc2b = 'R4:R203';
ycalc2b = xlsread(filename,sheet,ycalc2b);

semilogy(tcalc, ycalc1a, 'c', tcalc, ycalc1b, 'm', tcalc, ycalc2a, '--r', tcalc, ycalc2b, '--b', texp1,yexp1,'o',tmod, ymod_smooth, 'k', 'LineWidth',4)
hold on
box on
newcolors = ["#EDB120"];
colororder(newcolors)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Vitreous concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 100, 0.001 1000])
hold off

%Overall legend
legend('Case 1a', 'Case 1b', 'Case 2a', 'Case 2b', 'Zhu et al. (2008)', 'Missel and Sarangapani (2019)','FontName','Arial','FontSize',10)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');