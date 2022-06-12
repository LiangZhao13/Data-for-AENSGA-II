%% This is the m file plot the simulation results in static environment


%% plot map with start and goal
map1 = im2bw(imread('map.bmp'));
mapobj1 = binaryOccupancyMap(~map1);

map2 = im2bw(imread('map2.bmp'));
mapobj2 = binaryOccupancyMap(~map2);

figure(1)
subplot(1, 2, 1)
set (gcf,'Position',[500,200,1200,450]);
show(mapobj1);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Environment Map (Case 1)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(10 ,290, 'b', 'filled')
scatter(270 ,90, 'r', 'filled')
text(10+10 ,290, 'Start Point','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(270+5 ,90, 'Goal Point','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')


subplot(1, 2, 2)
show(mapobj2);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Environment Map (Case 2)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(50 ,160, 'b', 'filled')
scatter(250 ,60, 'r', 'filled')
text(50-25 ,160+15, 'Start Point','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(250+10 ,60, 'Goal Point','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
clear

%% plot the original path comparison with other algorithm
[path, mapobj] = loadPath('smoothtestOri1', 'map.bmp');
figure(2)
subplot(1, 2, 1)
set (gcf,'Position',[500,200,1200,450]);

show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Path Comparison (Case 1)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('GApath1', 'map.bmp');
hold on
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('DstarLitePath1', 'map.bmp');
plot(path(:,1),path(:,2), 'b--', 'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('HybridAstar1', 'map.bmp');
plot(path(:,1),path(:,2), 'k-.', 'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('pathRRT1', 'map.bmp');
plot(path(:,1),path(:,2), 'g--', 'lineWidth', 1.5);
scatter(10 ,290, 'b', 'filled')
scatter(270 ,90, 'r', 'filled')
text(10+10 ,290, 'Start Point','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(270+5 ,90, 'Goal Point','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'GA','Yao et al., 2021', 'Petereit et al., 2012', 'Karaman et al., 2011',  'FontSize',11,'FontName','Times New Roman', 'FontWeight', 'bold')

clear

% Case 2 generated path (without smooting)
subplot(1, 2, 2)
[path, mapobj] = loadPath('smoothtestOri2', 'map2.bmp');
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Path Comparison (Case 2)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('GApath2', 'map2.bmp');
hold on
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('DstarLitePath2', 'map2.bmp');
plot(path(:,1),path(:,2), 'b--', 'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('HybridAstar2', 'map2.bmp');
plot(path(:,1),path(:,2), 'k-.', 'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('pathRRT2', 'map2.bmp');
plot(path(:,1),path(:,2), 'g--', 'lineWidth', 1.5);
scatter(50 ,160, 'b', 'filled')
scatter(250 ,60, 'r', 'filled')
text(50-50 ,160+20, 'Start Point','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(250+10 ,60, 'Goal Point','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'GA','Yao et al., 2021', 'Petereit et al., 2012', 'Karaman et al., 2011',  'FontSize',11,'FontName','Times New Roman', 'FontWeight', 'bold')
clear

%% plot the path after smoothing using different techs
[path, mapobj] = loadPath('smoothtestOST1', 'map.bmp');
figure(3)
subplot(1, 2, 1)
set (gcf,'Position',[500,200,1200,450]);
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Smoothing Comparison (Case 1)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('smoothtestClothoid1', 'map.bmp');
hold on
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('smoothtestBSP1', 'map.bmp');
plot(path(:,1),path(:,2), 'b--', 'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('smoothtestOri1', 'map.bmp');
plot(path(:,1),path(:,2), 'k-.', 'lineWidth', 1.5);
scatter(10 ,290, 'b', 'filled')
scatter(270 ,90, 'r', 'filled')
text(10+15 ,290, 'Start Point','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(270-25 ,90-10, 'Goal Point','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed','Vazquez and Casal (2012) (Clothoid)',...
'Wang et al., 2019 (B-Spline)', 'Original',  'FontSize',11,'FontName',...
'Times New Roman', 'FontWeight', 'bold', 'location', 'Southwest')
clear

% Case 2 generated path (smoothing)
[path, mapobj] = loadPath('smoothtestOST2', 'map2.bmp');
subplot(1, 2, 2)
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Smoothing Comparison (Case 2)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('smoothtestClothoid2', 'map2.bmp');
hold on
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('smoothtestBSP2', 'map2.bmp');
plot(path(:,1),path(:,2), 'b--', 'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('smoothtestOri2', 'map2.bmp');
plot(path(:,1),path(:,2), 'k-.', 'lineWidth', 1.5);
scatter(50 ,160, 'b', 'filled')
scatter(250 ,60, 'r', 'filled')
text(50-50 ,160+20, 'Start Point','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(250+10 ,60, 'Goal Point','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'Vazquez and Casal (2012) (Clothoid)',...
'Wang et al., 2019 (B-Spline)', 'Original',  'FontSize',11,'FontName',...
'Times New Roman', 'FontWeight', 'bold')
clear

%% plot smoothness value
% Scenario 1 (proposed) smoothness
[path, mapobj] = loadPath('SmoothtestOST1', 'map.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
figure(4);
set (gcf,'Position',[500,200,1400,450]);
subplot(1, 2, 1)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
box on
title('Smoothness Value (Proposed, Case 1)',  'FontSize',16, 'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

% Scenario 1 (RRT) smoothness
[path, mapobj] = loadPath('pathRRT1', 'map.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
subplot(1, 2, 2)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
box on
title('Smoothness Value (Karaman et al., 2011, Case 1)',  'FontSize',16, 'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear



% Scenario 1 (RRT*) smoothness
figure(5)
set (gcf,'Position',[500,200,1400,450]);
[path, mapobj] = loadPath('SmoothtestOST2', 'map2.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
subplot(1, 2, 1)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
box on
title('Smoothness Value (Proposed, Case 2)',  'FontSize',16, 'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

% Scenario 2 (RRT*) smoothness
[path, mapobj] = loadPath('pathRRT2', 'map2.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
subplot(1, 2, 2)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
box on
title('Smoothness Value (Karaman et al., 2011, Case 2)',  'FontSize',16, 'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

%% course angle changes during simulation with Otter case 1 and 2
figure(6)
set (gcf,'Position',[200,200,1800, 400]);
subplot(2, 2, 1)
[v, chi, chi_d, t] = vcload('OtterMGAcase1');
% proposed case 1
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

% proposed case 1
subplot(2, 2, 3)
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

% RRT* case 2
[v, chi, chi_d, t] = vcload('OtterRRTcase1');
subplot(2, 2, 2)
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


subplot(2, 2, 4)
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


 % case 2
 figure(7)
set (gcf,'Position',[200,200,1800,400]);
subplot(2, 2, 1)
[v, chi, chi_d, t] = vcload('OtterMGAcase2');
% proposed case 2
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

% proposed case 2
subplot(2, 2, 3)
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

% RRT* case 2
[v, chi, chi_d, t] = vcload('OtterRRTcase2');
subplot(2, 2, 2)
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


subplot(2, 2, 4)
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


%% subroutine functions
function [x1, x2, chiOST, chiRRT] = loadData(filename1, filename2, n)
% change coordinate of chi angle
% the original chi angle received from Otter is based on Y axis, therefore 
% we need to transform it to X axis
out = load(filename1);
out2 = load(filename2);

chiOST = out.out.chi_d;
chiOST(n:end) = [];
chiRRT = out2.out.chi_d;

chiOST = calculateChi(chiOST);
chiRRT = calculateChi(chiRRT);

x1 = linspace(1, 1000, length(chiOST));
x2 = linspace(1, 1000, length(chiRRT));

function chi = calculateChi(chi)
for i = 1:length(chi)
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

function [path, mapobj] = loadPath(filename1, filename2)
% load the results from mat file, output path information and map
% for generated path with/without smoothing
if strcmp(filename1, 'pathRRT1') || strcmp(filename1, 'pathRRT2')
    out = load(filename1);
    path = out.pthObj.States;
else
    out = load(filename1);
    path = out.path;
end
map = im2bw(imread(filename2));
mapobj = binaryOccupancyMap(~map);
end


function pathMetricsObj = evaluatePath(mapobj, path)
% mapobj
% path: n*3 vector
statespace = stateSpaceDubins([mapobj.XWorldLimits;mapobj.YWorldLimits;-pi pi]);
statevalidator = validatorOccupancyMap(statespace);
statevalidator.Map = mapobj;
statevalidator.ValidationDistance = 0.01;
pathobj = navPath(statespace);
append(pathobj, path);
pathMetricsObj = pathmetrics(pathobj,statevalidator);
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
