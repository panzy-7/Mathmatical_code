%第一问
% C=[0,0,2,4,4,6,8,8,3,4,6,3;
%    0,8,4,0,6,4,0,8,3,7,7,9];
% C=C';
clear
data1 = xlsread('F:\潘宗勇PANZONGYONG\2020暑期冲啊\数学建模冲啊\集训\第四个任务\2020杭电大学生数学建模竞赛集训模型4\B题：无线可充电传感器网络充电路线规划\B题附件1.xlsx');
x = data1(:,1);
y = data1(:,2);
C = data1(:,1:2);
NC_max=400;
m=32;
Alpha=1;
Beta=1;
Rho=0.2;
Q=20;
[R_best,L_best,L_ave,Shortest_Route,Shortest_Length]=ACATSP(C,NC_max,m,Alpha,Beta,Rho,Q);