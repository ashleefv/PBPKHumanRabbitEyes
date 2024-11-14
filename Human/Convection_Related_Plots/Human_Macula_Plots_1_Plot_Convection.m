clear variables
clc

%% Middle vitreous slow convection
filename = 'Human_Macula_Results_Middle_Vitreous_Slow.xlsx';
sheet = 1; 

%Time ranges
trange1 = 'A6:A206';
trange2 = 'I8:I205';

t_calc1 = xlsread(filename,sheet,trange1);
t_calc2 = xlsread(filename,sheet,trange2);


%Case 1a
yrange1a = 'C6:C206';
y_calc1a_conc = xlsread(filename,sheet,yrange1a);

%Case 1b
yrange1b_flux = 'G6:G206';
yrange1b_conc = 'J8:J205';
y_calc1b_flux = xlsread(filename,sheet,yrange1b_flux);
y_calc1b_conc = xlsread(filename,sheet,yrange1b_conc);

%Case 2a
yrange2a = 'N6:N206';
y_calc2a_conc = xlsread(filename,sheet,yrange2a);

%Case 2b
yrange2b_flux = 'R6:R206';
yrange2b_conc = 'U8:U205';
y_calc2b_flux = xlsread(filename,sheet,yrange2b_flux);
y_calc2b_conc = xlsread(filename,sheet,yrange2b_conc);
 

%
subplot(1,2,1)
hold on
box on
plot(t_calc1,y_calc1a_conc,'c',t_calc2,y_calc1b_conc,'m',t_calc1,y_calc2a_conc,'--r',t_calc2,y_calc2b_conc,'--b','LineWidth',4)
yline (0.5,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',14)
axis([0 100, 0 3500])

% create a new pair of axes inside current figure
axes('position',[.385 .25 .07 .22])
box on % put box around new pair of axes
indexOfInterest1 = (t_calc1 < 100) & (t_calc1  > 4); % range of t of interest
indexOfInterest2 = (t_calc2 < 100) & (t_calc2  > 4); % range of t of interest
hold on
plot(t_calc1(indexOfInterest1),y_calc1a_conc(indexOfInterest1),'c',t_calc2(indexOfInterest2),y_calc1b_conc(indexOfInterest2),'m',t_calc1(indexOfInterest1),y_calc2a_conc(indexOfInterest1),'--r',t_calc2(indexOfInterest2),y_calc2b_conc(indexOfInterest2),'--b') % plot on new axes
yline (0.5,':k')
axis([10 100, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',8)
hold off

%% Middle vitreous fast convection
filename = 'Human_Macula_Results_Middle_Vitreous_Fast.xlsx';
sheet = 1; 

%Time ranges
trange1 = 'A6:A206';
trange2 = 'I8:I205';

t_calc1 = xlsread(filename,sheet,trange1);
t_calc2 = xlsread(filename,sheet,trange2);


%Case 1a
yrange1a = 'C6:C206';
y_calc1a_conc = xlsread(filename,sheet,yrange1a);

%Case 1b
yrange1b_flux = 'G6:G206';
yrange1b_conc = 'J8:J205';
y_calc1b_flux = xlsread(filename,sheet,yrange1b_flux);
y_calc1b_conc = xlsread(filename,sheet,yrange1b_conc);

%Case 2a
yrange2a = 'N6:N206';
y_calc2a_conc = xlsread(filename,sheet,yrange2a);

%Case 2b
yrange2b_flux = 'R6:R206';
yrange2b_conc = 'U8:U205';
y_calc2b_flux = xlsread(filename,sheet,yrange2b_flux);
y_calc2b_conc = xlsread(filename,sheet,yrange2b_conc);
 

%
subplot(1,2,2)
hold on
box on
plot(t_calc1,y_calc1a_conc,'c',t_calc2,y_calc1b_conc,'m',t_calc1,y_calc2a_conc,'--r',t_calc2,y_calc2b_conc,'--b','LineWidth',4)
yline (0.5,':k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',14)
axis([0 100, 0 3500])

%Overall legend
legend('Case 1a','Case 1b','Case 2a', 'Case 2b','0.5 \mug/mL threshold','FontName','Arial','FontSize',10)
h = legend('Location','northoutside', 'Orientation', 'horizontal');
p = [0.5 0.98 0.03 0.03];
set(h,'Position', p,'Units', 'normalized');

% create a new pair of axes inside current figure
axes('position',[.825 .25 .07 .22])
box on % put box around new pair of axes
indexOfInterest1 = (t_calc1 < 100) & (t_calc1  > 4); % range of t of interest
indexOfInterest2 = (t_calc2 < 100) & (t_calc2  > 4); % range of t of interest
hold on
plot(t_calc1(indexOfInterest1),y_calc1a_conc(indexOfInterest1),'c',t_calc2(indexOfInterest2),y_calc1b_conc(indexOfInterest2),'m',t_calc1(indexOfInterest1),y_calc2a_conc(indexOfInterest1),'--r',t_calc2(indexOfInterest2),y_calc2b_conc(indexOfInterest2),'--b') % plot on new axes
yline (0.5,':k')
axis([10 100, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',8)
hold off

