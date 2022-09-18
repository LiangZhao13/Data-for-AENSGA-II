clear
close all

%% Plot the solutions
% AENSGA
[path, mapobj] = loadPath('AENSGApath1', 'map.bmp');
figure(1)
show(mapobj)
box on
set (gcf,'Position',[300,200,800,800]);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Solution space (AENSGA-II)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
[path, mapobj] = loadPath('AENSGApath1', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath2', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath3', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath4', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath5', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath6', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath7', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath8', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath9', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath10', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
[path, mapobj] = loadPath('AENSGApath11', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 8, 20, 'k');
hold on
scatter(340, 750,120, 'o', 'b', 'filled');
scatter(360, 70,120, 'o', 'm', 'filled');
text(340+15, 750-10, 'Start Point','Color', 'b','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');
text(360+15, 70, 'Goal Point','Color', 'm','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');

% NSGA-II
[path, mapobj] = loadPath('AENSGApath7', 'map.bmp');
figure(2)
show(mapobj)
box on
set (gcf,'Position',[300,200,800,800]);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Solution space (NSGA-II)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
[path, mapobj] = loadPath('NSGApath1', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('NSGApath2', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('NSGApath3', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('NSGApath4', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('NSGApath5', 'map.bmp');
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
scatter(340, 750,120, 'o', 'b', 'filled');
scatter(360, 70,120, 'o', 'm', 'filled');
text(340+15, 750-10, 'Start Point','Color', 'b','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');
text(360+15, 70, 'Goal Point','Color', 'm','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');

% EPSO
[path, mapobj] = loadPath('AENSGApath1', 'map.bmp');
figure(3)
show(mapobj)
box on
set (gcf,'Position',[300,200,800,800]);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Solution space (EPSO)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
[path, mapobj] = loadPath('EPSOpath1', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath2', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath3', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath4', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath5', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath6', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 2, 1, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath7', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
[path, mapobj] = loadPath('EPSOpath8', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k', 'lineWidth', 1);
plotBoat(path, 30, 1, 2, 'k');
hold on
scatter(340, 750,120, 'o', 'b', 'filled');
scatter(360, 70,120, 'o', 'm', 'filled');
text(340+15, 750-10, 'Start Point','Color', 'b','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');
text(360+15, 70, 'Goal Point','Color', 'm','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');

% Optimal path selected
figure(5)
show(mapobj)
box on
set (gcf,'Position',[300,200,800,800]);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Solutions after selection', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
hold on
[path, mapobj] = loadPath('AENSGApath7', 'map.bmp');
plot(path(:,1),path(:,2), 'r', 'lineWidth', 3);

hold on
[path, mapobj] = loadPath('EPSOpath6', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'k--',  'lineWidth', 3);

hold on
[path, mapobj] = loadPath('EPSOpath8', 'map.bmp');
path = calculateYaw(path);
plot(path(:,1),path(:,2), 'b--', 'lineWidth', 3);

hold on
[path, mapobj] = loadPath('EPSOpath5', 'map.bmp');
plot(path(:,1),path(:,2), 'k:',  'lineWidth', 3);

hold on
[path, mapobj] = loadPath('NSGApath4', 'map.bmp');
plot(path(:,1),path(:,2), 'b:',  'lineWidth', 3);
hold on
[path, mapobj] = loadPath('NSGApath2', 'map.bmp');
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 3);
hold on
scatter(340, 750,120, 'o', 'b', 'filled');
scatter(360, 70,120, 'o', 'm', 'filled');
text(340+15, 750-10, 'Start Point','Color', 'b','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');
text(360+15, 70, 'Goal Point','Color', 'm','FontSize',16, 'FontName','Times New Roman', 'FontWeight', 'bold');
legend('AENSGA-II - fuzzy selected', 'EPSO - safest',...
    'EPSO - economic/smoothest',  ...
    'NSGA-II - safest', 'NSGA-II - most economic', 'NSGA-II - smoothest',...
    'FontSize', 14,'FontName','Times New Roman', 'FontWeight', 'bold')


%% subroutine functions
function plotBoat(x, h, gap, start, color)
% x - path data
% h - triangle height
% gap - plot interval

l = 20;
i = length(x);
x = x';
for j=start:i-1
   if mod(j,gap) == 0
        line([x(1,j)-(h/2)*cos(x(3,j))+(l/2)*sin(x(3,j)) x(1,j)-(h/2)*cos(x(3,j))-(l/2)*sin(x(3,j))],...
             [x(2,j)-(h/2)*sin(x(3,j))-(l/2)*cos(x(3,j)) x(2,j)-(h/2)*sin(x(3,j))+(l/2)*cos(x(3,j))],'Color',color,  'lineWidth', 2);
        line([x(1,j)-(h/2)*cos(x(3,j))+(l/2)*sin(x(3,j)) x(1,j)+(h/2)*cos(x(3,j))],...
             [x(2,j)-(h/2)*sin(x(3,j))-(l/2)*cos(x(3,j)) x(2,j)+(h/2)*sin(x(3,j))],'Color', color, 'lineWidth', 2);
        line([x(1,j)-(h/2)*cos(x(3,j))-(l/2)*sin(x(3,j)) x(1,j)+(h/2)*cos(x(3,j))],...
             [x(2,j)-(h/2)*sin(x(3,j))+(l/2)*cos(x(3,j)) x(2,j)+(h/2)*sin(x(3,j))],'Color', color,  'lineWidth', 2);
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

function path = calculateYaw(path)
    waypoint_num = length(path);
    waypoint_y = path(:, 2);
    waypoint_x = path(:, 1);
    waypoint_yaw = [0];
    for i = 1:waypoint_num-1
        angle = atan2(waypoint_y(i+1)- waypoint_y(i),waypoint_x(i+1)- waypoint_x(i));
        waypoint_yaw = [waypoint_yaw; angle];
    end
    waypoint_yaw(1) = [];
    waypoint_yaw = [waypoint_yaw; waypoint_yaw(end)];
    path = [path waypoint_yaw];
end
