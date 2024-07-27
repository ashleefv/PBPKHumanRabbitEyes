clear variables
clc

%% Anterior vitreous
filename = 'Human_Macula_Results_Anterior_Vitreous.xlsx';
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
figure()
subplot(1,2,1)
hold on
box on
plot(t_calc1,y_calc1a_conc,'c',t_calc1,y_calc2a_conc,'--r','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',13)
axis([0 100, 0 180])
legend('Case 1a','Case 2a', '0.5 \mug/mL threshold','FontName','Arial','FontSize',10)

% create a new pair of axes inside current figure
axes('position',[.35 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc1 < 100    ) & (t_calc1  > 4); % range of t of interest
hold on
plot(t_calc1(indexOfInterest),y_calc1a_conc(indexOfInterest),'c',t_calc1(indexOfInterest),y_calc2a_conc(indexOfInterest),'--r') % plot on new axes
yline (0.5,'--k')
axis([10 100, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off


subplot(1,2,2)
colororder({'k','k'})
yyaxis left
plot(t_calc1,y_calc1b_flux,'y',t_calc1,y_calc2b_flux,'--g','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Flux (\mug/(mm^2 · d))','FontName','Arial','FontSize',13)


yyaxis right
plot(t_calc2,y_calc1b_conc,'m',t_calc2,y_calc2b_conc,'--b','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',13)
legend('Case 1b', 'Case 2b','0.5 \mug/mL threshold','FontName','Arial','FontSize',10)


% create a new pair of axes inside current figure
axes('position',[.79 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc2 < 100) & (t_calc2  > 4); % range of t of interest
hold on
plot(t_calc2(indexOfInterest),y_calc1b_conc(indexOfInterest),'m',t_calc2(indexOfInterest),y_calc2b_conc(indexOfInterest),'--b') % plot on new axes
yline (0.5,'--k')
axis([0 20, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off

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
figure()
subplot(1,2,1)
hold on
box on
plot(t_calc1,y_calc1a_conc,'c',t_calc1,y_calc2a_conc,'--r','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',13)
axis([0 100, 0 300])
legend('Case 1a','Case 2a', '0.5 \mug/mL threshold','FontName','Arial','FontSize',10)

% create a new pair of axes inside current figure
axes('position',[.35 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc1 < 100    ) & (t_calc1  > 4); % range of t of interest
hold on
plot(t_calc1(indexOfInterest),y_calc1a_conc(indexOfInterest),'c',t_calc1(indexOfInterest),y_calc2a_conc(indexOfInterest),'--r') % plot on new axes
yline (0.5,'--k')
axis([10 100, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off


subplot(1,2,2)
colororder({'k','k'})
yyaxis left
plot(t_calc1,y_calc1b_flux,'y',t_calc1,y_calc2b_flux,'--g','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Flux (\mug/(mm^2 · d))','FontName','Arial','FontSize',13)


yyaxis right
plot(t_calc2,y_calc1b_conc,'m',t_calc2,y_calc2b_conc,'--b','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',13)
legend('Case 1b', 'Case 2b','0.5 \mug/mL threshold','FontName','Arial','FontSize',10)


% create a new pair of axes inside current figure
axes('position',[.79 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc2 < 100) & (t_calc2  > 4); % range of t of interest
hold on
plot(t_calc2(indexOfInterest),y_calc1b_conc(indexOfInterest),'m',t_calc2(indexOfInterest),y_calc2b_conc(indexOfInterest),'--b') % plot on new axes
yline (0.5,'--k')
axis([0 20, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',8)

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
figure()
subplot(1,2,1)
hold on
box on
plot(t_calc1,y_calc1a_conc,'c',t_calc1,y_calc2a_conc,'--r','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',13)
axis([0 100, 0 400])
legend('Case 1a','Case 2a', '0.5 \mug/mL threshold','FontName','Arial','FontSize',10)

% create a new pair of axes inside current figure
axes('position',[.35 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc1 < 100    ) & (t_calc1  > 4); % range of t of interest
hold on
plot(t_calc1(indexOfInterest),y_calc1a_conc(indexOfInterest),'c',t_calc1(indexOfInterest),y_calc2a_conc(indexOfInterest),'--r') % plot on new axes
yline (0.5,'--k')
axis([10 100, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off


subplot(1,2,2)
colororder({'k','k'})
yyaxis left
plot(t_calc1,y_calc1b_flux,'y',t_calc1,y_calc2b_flux,'--g','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Flux (\mug/(mm^2 · d))','FontName','Arial','FontSize',13)


yyaxis right
plot(t_calc2,y_calc1b_conc,'m',t_calc2,y_calc2b_conc,'--b','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',13)
legend('Case 1b', 'Case 2b','0.5 \mug/mL threshold','FontName','Arial','FontSize',10)


% create a new pair of axes inside current figure
axes('position',[.79 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc2 < 100) & (t_calc2  > 4); % range of t of interest
hold on
plot(t_calc2(indexOfInterest),y_calc1b_conc(indexOfInterest),'m',t_calc2(indexOfInterest),y_calc2b_conc(indexOfInterest),'--b') % plot on new axes
yline (0.5,'--k')
axis([0 20, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off

%% Posterior vitreous
filename = 'Human_Macula_Results_Posterior_Vitreous.xlsx';
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
figure()
subplot(1,2,1)
hold on
box on
plot(t_calc1,y_calc1a_conc,'c',t_calc1,y_calc2a_conc,'--r','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',13)
axis([0 100, 0 800])
legend('Case 1a','Case 2a', '0.5 \mug/mL threshold','FontName','Arial','FontSize',10)

% create a new pair of axes inside current figure
axes('position',[.35 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc1 < 100    ) & (t_calc1  > 4); % range of t of interest
hold on
plot(t_calc1(indexOfInterest),y_calc1a_conc(indexOfInterest),'c',t_calc1(indexOfInterest),y_calc2a_conc(indexOfInterest),'--r') % plot on new axes
yline (0.5,'--k')
axis([10 100, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off


subplot(1,2,2)
colororder({'k','k'})
yyaxis left
plot(t_calc1,y_calc1b_flux,'y',t_calc1,y_calc2b_flux,'--g','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Flux (\mug/(mm^2 · d))','FontName','Arial','FontSize',13)


yyaxis right
plot(t_calc2,y_calc1b_conc,'m',t_calc2,y_calc2b_conc,'--b','LineWidth',4)
yline (0.5,'--k','LineWidth',4)
xlabel('Time (days)','FontName','Arial','FontSize',13)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',13)
legend('Case 1b', 'Case 2b','0.5 \mug/mL threshold','FontName','Arial','FontSize',10)


% create a new pair of axes inside current figure
axes('position',[.79 .3 .1 .2])
box on % put box around new pair of axes
indexOfInterest = (t_calc2 < 100) & (t_calc2  > 4); % range of t of interest
hold on
plot(t_calc2(indexOfInterest),y_calc1b_conc(indexOfInterest),'m',t_calc2(indexOfInterest),y_calc2b_conc(indexOfInterest),'--b') % plot on new axes
yline (0.5,'--k')
axis([0 20, 0 4])
xlabel('Time (days)','FontName','Arial','FontSize',8)
ylabel('Average concentration (\mug/mL)','FontName','Arial','FontSize',8)

hold off