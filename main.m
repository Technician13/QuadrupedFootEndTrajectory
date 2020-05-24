%Technician13
%2020.5.24

close all;
clear all;
clc;

%initial height
height=60;

axis equal;
hold on;

%foot end trajectory
t=0:0.01:30;
y_foot=10*(1-cos(pi*t/15));
x_foot=60/(2*pi)*(pi*t/15-sin(pi*t/15));  
plot(x_foot,y_foot,'color','g','LineWidth',2);

%body trajectory
y_body=linspace(height,height,length(t));
x_body=linspace(15,45,length(t));
plot(x_body,y_body,'color','b','LineWidth',2);

x1=15:1:45;
y1=linspace(height,height,length(x1));
x3=0:2:60;
curve=spline(x_foot,y_foot);
y3=ppval(curve,x3);

[x2,y2]=solvepoint(x1,y1,x3,y3,height);
for i=1:length(x1)
    hold on;
    plot([x1(i),x2(i),x3(i)],[y1(i),y2(i),y3(i)],'color','black');
    pause(0.1);
    hold on;
end
hold on;
