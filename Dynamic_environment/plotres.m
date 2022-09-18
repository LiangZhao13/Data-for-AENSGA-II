clear
close all
clc

%% plot simulation results
% trajectory
run('plotTraj')
clear

% data loading
load map
out = load('out.mat');
out = out.out;
outold = load('outoriginal.mat');
outold = outold.out;
map = bw;
mapobj = binaryOccupancyMap(~map);
startp = [151 588];
endp = [419 103];
obstart1 = [296, 70];
obstart2 = [274, 543];
[ob1, ob2, USV] = obTraj(length(outold.tout), outold);

% plot relative distance
figure(2)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Relative distance','FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Distance (m)',  'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
[xnew, ynew, tnew] = dataprocess(length(out.tout), out);
[dist, mindist, mintime] = calculateDist(ob1, USV);
plot(tnew(1:length(dist)), dist, 'r--', 'lineWidth', 1);
hold on
[dist, mindist, mintime] = calculateDist(ob2, USV(1:length(ob2), :));
plot(tnew(1:length(dist)), dist,  'b--', 'lineWidth', 1);
hold on
[xnew, ynew, tnew] = dataprocess(length(out.tout), out);
USV = [xnew' ynew'];
[dist, mindist, mintime] = calculateDist(ob1, USV(1:length(ob1), :));
plot(tnew(1:length(dist)), dist, 'r', 'lineWidth', 1.5);
[dist, mindist, mintime] = calculateDist(ob2, USV(1:length(ob2), :));
plot(tnew(1:length(dist)), dist, 'b', 'lineWidth', 1.5);
legend('DO1-Original', 'DO2-Original', 'DO1-Replanned', 'DO2-Replanned', 'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

% course and speed
[v, chi, chi_d, t, x, y, propeller] = vcload('out');
figure(3)
subplot(2, 1, 1)
set (gcf,'Position',[200,200,600,400]);
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Course Angle','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\chi (rad)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, chi,'r', 'lineWidth', 1.5);
hold on
plot(t, chi_d, 'b');
legend('\chi', '\chi_d','FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold');

subplot(2, 1, 2)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Speed','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('\upsilon (m/s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, v, 'r', 'lineWidth', 1.5);
hold on
legend('\upsilon',  'FontSize',10,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Southeast');
clear

% propeller command
[v, chi, chi_d, t, x, y, propeller] = vcload('out');
figure(4)
subplot(2, 1, 1)
set (gcf,'Position',[200,200,600,400]);
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Propeller No.1 (Proposed)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('n (rad/s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, propeller(:, 1),'r', 'lineWidth', 1.5);

subplot(2, 1, 2)
box on;
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Propeller No.2 (Proposed)','FontName','Times New Roman',  'FontSize',14, 'FontWeight', 'bold')
xlabel('Time (s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('n (rad/s)',  'FontSize',12,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(t, propeller(:, 2), 'r', 'lineWidth', 1.5);
clear

%% subroutine functions
function [ob1, ob2, USV] = obTraj(n, out);
[xnew, ynew, tnew] = dataprocess(n, out);
USV = [xnew' ynew'];
% obstar1 pi/2, 0.9m/s start = (300, 55)
obstart1 = [296, 70];
yy1 = (70:4.5:800)';
yy1 = yy1(1:length(tnew), :);
xx1 = yy1;
xx1(:) = obstart1(1);
ob1 = [xx1, yy1];

% obstar2 -2pi/3, 1m/s, start = [274, 543]
obstart2 = [274, 543];
yy2 = (543: -2.5: 0)';
yy2 = yy2(1:length(tnew), :);
xx2 = (274: -4.33: -200)';
xx2 = xx2(1:length(tnew), :);
ob2 = [xx2, yy2];

function [xnew, ynew, tnew] = dataprocess(n, out)
x1 = 151;
y1 = 588;
out.x = out.x + x1; 
out.y = out.y + y1;
x = out.x;
y = out.y;
xnew = [];
ynew = [];
t = out.tout;
% interval: 5s
for i = 1:100:n
    xnew = [xnew x(i)];
    ynew = [ynew y(i)];
end
tnew = [];
for i = 1:100:n
    tnew = [tnew t(i)];
end
end
end

function [xnew, ynew, tnew] = dataprocess(n, out)
x1 = 151;
y1 = 588;
out.x = out.x + x1; 
out.y = out.y + y1;
x = out.x;
y = out.y;
xnew = [];
ynew = [];
t = out.tout;
% interval: 5s
for i = 1:100:n
    xnew = [xnew x(i)];
    ynew = [ynew y(i)];
end
tnew = [];
for i = 1:100:n
    tnew = [tnew t(i)];
end
end


function [dist, mindist, mintime] = calculateDist(ob, USV)
n = length(USV);
dist = [];
for i = 1:n
    dist = [dist; norm(ob(i, :)-USV(i, :))];
end
[mindist, mintime] = min(dist);
end


function [x, y, u, v] = fixedcurrentGen(theta)
m = 10;
x = -50:50:850;
y = -50:50:850;
n_x = length(x);
n_y = length(y);
[x, y] = meshgrid(x, y);
u = ones(n_x);
v = ones(n_y);

u(:) =  m*cos(theta);
v(:) = -m*sin(theta);
end


function [v, chi, chi_d, t, x, y, propeller] = vcload(filename)
data = load(filename);
out = data.out;
v = out.speed;
t = out.tout;
chi = calculateChi(out.chi, t);
chi_d = calculateChi(out.chi_d, t);
x = out.x;
y = out.y;
propeller = out.propeller;

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
