tic
clear
a=importdata('exp_data.dat');
theta=a.data(:,1);
reflect_orig1=a.data(:,2);
% [lb,ub] is the solution domain
lb = [9.1, 4, 0.78, 72, 3.5,1.9,repmat([18.8 2.4 2.3],1,300),repmat([4.05 3 7.2],1,300),...
    repmat([3.65 4.4 10.2],1,300),repmat([4.05,3.3, 7.5],1,300),95,4.85,8.5];

ub = [9.5, 4, 0.78,76,3.5,1.9,repmat([19.7 2.4 2.3],1,300),repmat([4.45 3 7.3],1,300),...
    repmat([4.15 4.4 10.2],1,300),repmat([4.4,3.3, 7.9],1,300),105,4.85,8.5];

Size=20;% Size:for generating the Size possible solutions

Tmax=20;%iteration  Tmax

Stucture=@(xii)input_stucture(xii);%It's used for generating Size(100) structures   

[xi,chi_square]=main_CPSO_v2_vp1(Stucture,ub,lb,Size,Tmax);%xi is the optimal solution

x=optimal_solution(xi);% take out the optimal solution from the Size input_structures

result = readtable("reflectivity.dat");
Result=table2array(result);
calc_refl=Result(:,2);
calc_thita=Result(:,1);
toc
%% plot 
figure(1)
plot(theta,reflect_orig1,'b-')
hold on
plot(calc_thita,(calc_refl),'r-')
grid off
legend('experiment data','fitting curve');
xlabel('deg(°)'); ylabel('reflectivity');
set(gca,'YScale','log','FontSize',15); grid on;

figure(2)
plot(chi_square);
xlabel('iteration'); ylabel('chi-square');
figure(3)
[X,y1,y2,y3]=extract_H;
plot(X,y1,X,y2,X,y3);
xlabel('Layer number'); ylabel('Thickness(A)');