clear variables
clc

filename = 'Simulation_Verification_Human.xlsx';
sheet = 1; 

%Time ranges
trange1 = 'A5:A205';
t_calc1 = xlsread(filename,sheet,trange1);


%Case 1a
yrange1a = 'B5:B205';
y_calc1a_finer = xlsread(filename,sheet,yrange1a);
yrange1a = 'O5:O205';
y_calc1a_extra_fine = xlsread(filename,sheet,yrange1a);
yrange1a = 'AB5:AB205';
y_calc1a_extremely_fine = xlsread(filename,sheet,yrange1a);

%Case 1b
yrange1b = 'E5:E205';
y_calc1b_finer = xlsread(filename,sheet,yrange1b);
yrange1b = 'R5:R205';
y_calc1b_extra_fine = xlsread(filename,sheet,yrange1b);
yrange1b = 'AE5:AE205';
y_calc1b_extremely_fine = xlsread(filename,sheet,yrange1b);

%Case 2a
yrange2a = 'H5:H205';
y_calc2a_finer = xlsread(filename,sheet,yrange2a);
yrange2a = 'U5:U205';
y_calc2a_extra_fine = xlsread(filename,sheet,yrange2a);
yrange2a = 'AH5:AH205';
y_calc2a_extremely_fine = xlsread(filename,sheet,yrange2a);

%Case 2b
yrange2b = 'E5:E205';
y_calc2b_finer = xlsread(filename,sheet,yrange2b);
yrange2b = 'R5:R205';
y_calc2b_extra_fine = xlsread(filename,sheet,yrange2b);
yrange2b = 'AE5:AE205';
y_calc2b_extremely_fine = xlsread(filename,sheet,yrange2b);

%
figure()
subplot(2,2,1)
plot(t_calc1,y_calc1a_finer,'b',t_calc1,y_calc1a_extra_fine,'--r',t_calc1,y_calc1a_extremely_fine,':g','LineWidth',3)
%xlabel('Time (days)','FontName','Arial','FontSize',12)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',12)
axis([0 100, 0 300])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',10)
%title('Case 1a')


subplot(2,2,2)
plot(t_calc1,y_calc1b_finer,'b',t_calc1,y_calc1b_extra_fine,'--r',t_calc1,y_calc1b_extremely_fine,':g','LineWidth',3)
%xlabel('Time (days)','FontName','Arial','FontSize',12)
%ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',12)
axis([0 100, 0 300])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',10)
%title('Case 1b')

subplot(2,2,3)
plot(t_calc1,y_calc2a_finer,'b',t_calc1,y_calc2a_extra_fine,'--r',t_calc1,y_calc2a_extremely_fine,':g','LineWidth',3)
xlabel('Time (days)','FontName','Arial','FontSize',12)
ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',12)
axis([0 100, 0 300])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',10)
%title('Case 2a')


subplot(2,2,4)
plot(t_calc1,y_calc2b_finer,'b',t_calc1,y_calc2b_extra_fine,'--r',t_calc1,y_calc2b_extremely_fine,':g','LineWidth',3)
xlabel('Time (days)','FontName','Arial','FontSize',12)
%ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',12)
axis([0 100, 0 300])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',10)
%title('Case 2b')