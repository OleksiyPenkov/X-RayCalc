function Chi_Square=Calc_refl(T,Size)

 for i=1:Size
    layers(:,:)=T(:,:,i);%A three-dimensional array turns into a two-dimensional array
    Layers=array2table(layers);
    filename= ['.\Input\input_structure_' num2str(i) '.txt'];
    writetable(Layers,  filename, 'Delimiter',';','WriteVariableNames',false);
 end
system("xrccmd.exe  -f input_structure_#.txt -i exp_data.dat -n "+num2str(Size));
fileID = fopen("ChiSquare.dat","r");
formatSpec = '%f';
A = fscanf(fileID,formatSpec);  
fclose(fileID);
Chi_Square = A;