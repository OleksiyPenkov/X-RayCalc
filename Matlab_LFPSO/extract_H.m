function [x,y1,y2,y3]=extract_H(~)
filename = 'current_best_structure.txt';
fileID = fopen(filename);
A = textscan(fileID,'%*q %f %*f %*f','Delimiter',';');
B=cell2mat(A);% whole thickness

%% extract Boron thickness
B1=B(3:end-2);
n = length(B1); 
y1 = B1(1:4:n); 
x=linspace(1,length(y1),length(y1)); % number of layer

%% extract MoB2 thickness
B2=B(4:end-2);
y2= B2(1:4:n); 

%% extract Mo thickness
B3=B(5:end-2);
y3= B3(1:4:n); 

%% plot
% plot(x,y1);hold on
% plot(x,y2);hold on
% plot(x,y3);
% ylim([0 B1(1)+10])
% xlabel('Layer number'); ylabel('Thickness(A)');