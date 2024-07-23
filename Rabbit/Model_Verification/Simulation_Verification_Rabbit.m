clear variables
clc

%Normalization
c0 = 856.5318; %Initial concentration in rabbit vitreous

filename = 'Simulation_Verification_Rabbit.xlsx';
sheet = 1; 

%Time ranges
trange1 = 'A5:A85';
t_calc1 = xlsread(filename,sheet,trange1);


%Case 1a
yrange1a = 'B5:B85';
y_calc1a_finer = xlsread(filename,sheet,yrange1a)./c0;
yrange1a = 'O5:O85';
y_calc1a_extra_fine = xlsread(filename,sheet,yrange1a)./c0;
yrange1a = 'AB5:AB85';
y_calc1a_extremely_fine = xlsread(filename,sheet,yrange1a)./c0;

%Case 1b
yrange1b = 'E5:E85';
y_calc1b_finer = xlsread(filename,sheet,yrange1b)./c0;
yrange1b = 'R5:R85';
y_calc1b_extra_fine = xlsread(filename,sheet,yrange1b)./c0;
yrange1b = 'AE5:AE85';
y_calc1b_extremely_fine = xlsread(filename,sheet,yrange1b)./c0;

%Case 2a
yrange2a = 'H5:H85';
y_calc2a_finer = xlsread(filename,sheet,yrange2a)./c0;
yrange2a = 'U5:U85';
y_calc2a_extra_fine = xlsread(filename,sheet,yrange2a)./c0;
yrange2a = 'AH5:AH85';
y_calc2a_extremely_fine = xlsread(filename,sheet,yrange2a)./c0;

%Case 2b
yrange2b = 'E5:E85';
y_calc2b_finer = xlsread(filename,sheet,yrange2b)./c0;
yrange2b = 'R5:R85';
y_calc2b_extra_fine = xlsread(filename,sheet,yrange2b)./c0;
yrange2b = 'AE5:AE85';
y_calc2b_extremely_fine = xlsread(filename,sheet,yrange2b)./c0;

%
figure()
%subplot(2,2,1)
plot(t_calc1,y_calc1a_finer,'b',t_calc1,y_calc1a_extra_fine,'--r',t_calc1,y_calc1a_extremely_fine,':g','LineWidth',3)
ylabel('Normalized vitreous concentration','FontName','Arial','FontSize',14)
axis([0 40, 0 1])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',12)
%title('Case 1a')

figure()
%subplot(2,2,2)
plot(t_calc1,y_calc1a_finer,'b',t_calc1,y_calc1a_extra_fine,'--r',t_calc1,y_calc1a_extremely_fine,':g','LineWidth',3)
%xlabel('Time (days)','FontName','Arial','FontSize',12)
%ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',12)
axis([0 40, 0 1])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',12)
%title('Case 1b')

figure()
%subplot(2,2,3)
plot(t_calc1,y_calc1a_finer,'b',t_calc1,y_calc1a_extra_fine,'--r',t_calc1,y_calc1a_extremely_fine,':g','LineWidth',3)
xlabel('Time (days)','FontName','Arial','FontSize',14)
ylabel('Normalized vitreous concentration','FontName','Arial','FontSize',14)
axis([0 40, 0 1])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',12)
%title('Case 2a')

figure()
%subplot(2,2,4)
plot(t_calc1,y_calc1a_finer,'b',t_calc1,y_calc1a_extra_fine,'--r',t_calc1,y_calc1a_extremely_fine,':g','LineWidth',3)
xlabel('Time (days)','FontName','Arial','FontSize',14)
%ylabel('Concentration (\mug/mL)','FontName','Arial','FontSize',12)
axis([0 40, 0 1])
legend('Finer mesh', 'Extra fine mesh','Extremely fine mesh','FontName','Arial','FontSize',12)
%title('Case 2b')