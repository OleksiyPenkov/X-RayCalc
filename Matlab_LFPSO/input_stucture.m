function  T=input_stucture(xi)
%Step 1: exp. data
ExpFileName = "exp_data.dat";
opts = detectImportOptions(ExpFileName);
opts.PreserveVariableNames = true;
% ExpData = readtable(ExpFileName,opts);
% Step 2: structure
sz = [1204 4];
varTypes = ["string","single","single","single"];
varNames = ["Name","H","Sigma","rho"];
Layers = table('Size',sz,'VariableTypes',varTypes,'VariableNames',varNames);
Layers(1,:) = {"C", xi(1), xi(2), xi(3)};
Layers(2,:) = {"B", xi(4), xi(5), xi(6)};
for i=3:4:1199
Layers(i,:) = {"B",  xi(7+3*fix(i/4)), xi(7+3*fix(i/4)+1), xi(7+3*fix(i/4)+2)};
Layers(i+1,:) = {"MoB2", xi(3*300+7+3*fix(i/4)), xi(3*300+7+3*fix(i/4)+1), xi(3*300+7+3*fix(i/4)+2)};
% Layers(i+1+1,:) = {"Mo", (fix(i/4)*0.37/300+3.7), xi(3*300+3*300+7+3*fix(i/4)+1), xi(3*300+3*300+7+3*fix(i/4)+2)};
Layers(i+1+1,:) = {"Mo", xi(3*300+3*300+7+3*fix(i/4)), xi(3*300+3*300+7+3*fix(i/4)+1), xi(3*300+3*300+7+3*fix(i/4)+2)};
Layers(i+1+1+1,:) = {"MoB2", xi(3*300+3*300+3*300+7+3*fix(i/4)), xi(3*300+3*300+3*300+7+3*fix(i/4)+1), xi(3*300+3*300+3*300+7+3*fix(i/4)+2)};
end

Layers(end-1,:) = {"Mo", xi(end-2), xi(end-1), xi(end)};
Layers(end,:) = {"Si", 100000, 5, 2.33};

%save Size=100 stuctures.txt
T=table2array(Layers);

