%% plot the trajectory file
load out
load map
outoriginal = load('outoriginal.mat');
outoriginal = outoriginal.out;
map = bw;
mapobj = binaryOccupancyMap(~map);


% replanned path
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
for i = 1:100:9901
    xnew = [xnew x(i)];
    ynew = [ynew y(i)];
end
tnew = [];
for i = 1:100:9901
    tnew = [tnew t(i)];
end

% obstar1 pi/2, 0.9m/s start = (300, 55)
obstart1 = [296, 70];
yy1 = (70:4.5:800)';
yy1 = yy1(1:length(tnew), :);
xx1 = yy1;
xx1(:) = obstart1(1);

% obstar2 -2pi/3, 1m/s, start = [274, 543]
obstart2 = [274, 543];
yy2 = (543: -2.5: 300)';
yy2 = yy2(1:25, :);
xx2 = (274: -4.33: 150)';
xx2 = xx2(1:25, :);

% original path
xo = [];
yo = [];
x_o = outoriginal.x + x1;
y_o = outoriginal.y + y1;
for i = 1:100:9601
    xo = [xo x_o(i)];
    yo = [yo y_o(i)];
end

collision1 = find(tnew == 430);
tim = find(tnew == 180);
collision2 = find(tnew == 270);

figure(1)
show(mapobj)
box on
set (gcf,'Position',[300,200,700,700]);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Trajectory', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(xo(1:end), yo(1:end),140, 'b', '*', 'LineWidth',1)
scatter(xnew(1:end), ynew(1:end), 140, 'r', 'o', 'LineWidth',1)
scatter(xx1(1:collision1), yy1(1:collision1), 140, 'm', '^', 'LineWidth',1)
scatter(xx2(1:end), yy2(1:end), 140, 'g', '^', 'LineWidth',1)
legend('Original path', 'USV Trajectory', 'DO1', 'DO2', 'FontSize', 14,...
    'FontName','Times New Roman', 'FontWeight', 'bold');



