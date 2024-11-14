clear variables
clc

%Other model data
filename = 'Sibak_Data.csv';
sheet = 1; 
trange = 'A2:A134';
yrange = 'B2:B134';
tmod = xlsread(filename,sheet,trange);
ymod = xlsread(filename,sheet,yrange);
ymod_smooth = smooth(smooth(ymod));

%Bakri
trange = 'D3:D7';
yrange = 'E3:E7';
devrange = 'F3:F7';
texp1 = xlsread(filename,sheet,trange);
yexp1 = xlsread(filename,sheet,yrange);
stdv1 = xlsread(filename,sheet,devrange);

%Ahn et al. (2013)
trange = 'D12:D16';
yrange = 'E12:E16';
devrange = 'F12:F16';
texp2 = xlsread(filename,sheet,trange);
yexp2 = xlsread(filename,sheet,yrange);
stdv2 = xlsread(filename,sheet,devrange);

%% THIS IS FOR THE ANTERIOR INJECTION CASE

%Case 1a
tcalc = 'H4:H84';
ycalc1a = 'I4:I84';
tcalc = xlsread(filename,sheet,tcalc);
ycalc1a = xlsread(filename,sheet,ycalc1a);

%Case 1b
ycalc1b = 'L4:L84';
ycalc1b = xlsread(filename,sheet,ycalc1b);

%Case 2a
ycalc2a = 'O4:O84';
ycalc2a = xlsread(filename,sheet,ycalc2a);

%Case 2b
ycalc2b = 'R4:R84';
ycalc2b = xlsread(filename,sheet,ycalc2b);

hold on
box on
plot(tcalc, ycalc1a, 'c', tcalc, ycalc1b, 'm', tcalc, ycalc2a, '--r', tcalc, ycalc2b, '--b', 'LineWidth',4)
errorbar (texp1,yexp1,stdv1,'o','LineWidth',4)
errorbar(texp2,yexp2,stdv2,'^','LineWidth',4)
newcolors = ["#EDB120" "#0072BD"];
colororder(newcolors)
plot(tmod, ymod_smooth, 'k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Vitreous concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 35, 0 1600])

%Overall legend
legend('Case 1a','Case 1b', 'Case 2a', 'Case 2b', 'Bakri et al. (2007)', 'Ahn et al. (2013)', 'Sibak et al. (2023)', 'FontName','Arial','FontSize',10)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');