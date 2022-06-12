
%% case 1
[v, chi, chi_d, t] = vcload('OtterMGAcase1');
figure(1)
% proposed case 1
subplot(211)
set (gcf,'Position',[200,400,600,400]);
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 1 (Proposed)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold');

% proposed case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 1 (Proposed)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear

% GA case 2
figure(2)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterGAcase1');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 1 (GA)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% GA case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 1 (GA)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear


% HA* case 1
figure(3)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterHybridAstarcase1');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 1 (Petereit et al., 2012)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% HA* case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 1 (Petereit et al., 2012)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear

% D* case 1
figure(4)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterDstarLitecase1');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 1 (Yao et al., 2021)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% D* case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 1 (Yao et al., 2021)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear


% RRT* case 1
figure(5)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterRRTcase1');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 1 (Karaman et al., 2011)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% RRT* case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 1 (Karaman et al., 2011)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear

%% case 2
[v, chi, chi_d, t] = vcload('OtterMGAcase2');
figure(6)
set (gcf,'Position',[200,400,600,400]);
% proposed case 2
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 2 (Proposed)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold');


subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 2 (Proposed)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear

% GA 
figure(7)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterGAcase2');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 2 (GA)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% GA case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 2 (GA)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear


% HA* case 1
figure(8)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterHybridAstarcase2');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 2 (Petereit et al., 2012)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% HA* case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 2 (Petereit et al., 2012)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear

% D* case 1
figure(9)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterDstarLitecase2');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 2 (Yao et al., 2021)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% D* case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 2 (Yao et al., 2021)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear


% RRT* case 1
figure(10)
set (gcf,'Position',[200,400,600,400]);
[v, chi, chi_d, t] = vcload('OtterRRTcase2');
subplot(211)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle in Case 2 (Karaman et al., 2011)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest');

% RRT* case 2
subplot(212)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed in Case 2 (Karaman et al., 2011)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear


%%
function [path, mapobj] = loadPath(filename1, filename2)
% for generated path without smoothing
if strcmp(filename1, 'pathRRT1') | strcmp(filename1, 'pathRRT2')
    out = load(filename1);
    path = out.pthObj.States;
else
    out = load(filename1);
    path = out.path;
end
map = im2bw(imread(filename2));
mapobj = binaryOccupancyMap(~map);
end

function [v, chi, chi_d, t] = vcload(filename)
data = load(filename);
out = data.out;
v = out.speed;
t = out.tout;
chi = calculateChi(out.chi, t);
chi_d = calculateChi(out.chi_d, t);

% cooridanate change, chi is originally based on the north axis
% we need to change it to east axis

function chi = calculateChi(chi, t)
for i = 1:length(t)
    if chi(i) < -pi
        chi(i) = 2*pi + chi(i);
    elseif chi(i) > pi
        chi(i) = chi(i) - 2*pi;
    end
end
for i = 1:length(chi)
    if (0< chi(i)) && (chi(i) <= pi/2)
        chi(i) = pi/2 - chi(i);
    elseif (pi/2 < chi(i))&& (chi(i)<= pi)
        chi(i) = -(chi(i)-pi/2);
        continue
    elseif (-pi/2 < chi(i))&& (chi(i) <= 0)
        chi(i) = -chi(i) + pi/2;
        continue
    elseif (-pi < chi(i))&& (chi(i)<= -pi/2)
        chi(i) = -(3/2*pi + chi(i));
        continue
    end
end
end
end