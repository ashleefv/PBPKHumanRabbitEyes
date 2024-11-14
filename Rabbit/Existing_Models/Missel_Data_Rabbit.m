clear variables
clc

%Other model data
filename = 'Missel_Data_Rabbit.csv';
sheet = 1; 
trange = 'A2:A35';
yrange = 'B2:B35';
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


semilogy(tcalc, ycalc1a, 'c', tcalc, ycalc1b, 'm', tcalc, ycalc2a, '--r', tcalc, ycalc2b, '--b', 'LineWidth',4)
hold on
box on
errorbar (texp1,yexp1,stdv1,'o','LineWidth',4)
newcolors = ["#EDB120"];
colororder(newcolors)
%plot(tmod, ymod_smooth, 'k', 'LineWidth',4)
plot(tmod, ymod, 'k', 'LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Vitreous concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 30, 0.1 1000])
hold off

%Overall legend
legend('Case 1a','Case 1b', 'Case 2a', 'Case 2b', 'Bakri et al. (2007)', 'Missel and Sarangapani (2019)', 'FontName','Arial','FontSize',10)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');