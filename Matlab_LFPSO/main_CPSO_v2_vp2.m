function [best_x , f_gg]=main_CPSO_v2_vp2(Stucture,Xmax,Xmin,Size,Tmax)
%% PSO parameters
dimension=length(Xmax);%dimension
% Size=4;% Size
% Tmax=3;%%iteration  Tmax
c1=1.49445;
c2=1.49445;%study factor
 w_max = 0.8;                        
 w_min = 0.1;
k=0.1;%Proportional relationship between position and velocity
Vmax= Xmax*k;
Vmin=-Vmax;   
u=3.999;
MaxC=3;
a=0.5;
pc=0.5;
pm=0.05;
%  X=zeros(Size,dimension);
%  V=zeros(Size,dimension);
% f_x=zeros(1,Size);
% f_xbest=zeros(1,Size);
%% initialization population
X = rand(Size,dimension).*(Xmax-Xmin)+Xmin;
V = rand(Size,dimension).*(Vmax-Vmin)+Vmin;
Pi=X;  
for j=1:Size
   structure_3D(:,:,j)=Stucture(X(j,:));% used for generating Size structures      
end
f_x=Calc_refl(structure_3D,Size);% used for generating Chi-square  
f_xbest=f_x;  
[f_g,I]=min(f_xbest);     
Pg=X(I,:); 
time=zeros(1,Tmax);
f_gg=zeros(1,Tmax);
%% iteration
for t=1:Tmax
    time(t)=t;
    fprintf('Current evolution number：%d\n',t)
     w = w_max-(w_max-w_min)*t/Tmax; %Adaptive inertia weights (linearly decreasing)
    r1=rand(1);r2=rand(1);
    for j=1:Size
        V(j,:) = w*V(j,:) + c1*r1*(Pi(j,:)-X(j,:)) + c2*r2*(Pg-X(j,:));  %Speed Update
        index1 = find(V(j,:)>Vmax);
        V(j,index1) = Vmax(index1);
          index1=  find(V(j,:)<Vmin);
          V(j,index1) = Vmin(index1);
          
        X(j,:)= X(j,:)+V(j,:);  %position update
         
      index1 = find(X(j,:)>Xmax);
      X(j,index1) = Xmax(index1);
      index1=  find(X(j,:)<Xmin);
      X(j,index1) = Xmin(index1);
    end

    for j=1:Size
    structure_3D(:,:,j)=Stucture(X(j,:));%  used for generating  updated Size 3 dimension structures   structure_3D 
    end
    f_x=Calc_refl(structure_3D,Size); % used for generating  updated Chi-square f_x
    for j=1:Size
        if f_x(j)<f_xbest(j)
            f_xbest(j)=f_x(j);
            Pi(j,:)=X(j,:);
        end
        if f_xbest(j)<f_g
            Pg= Pi(j,:);
            f_g=f_xbest(j);
        end
    end
     [sortbest,sortindexbest]=sort(f_xbest);%按照适应度大小进行排序
            numPool=round(pc*Size);            %杂交池的大小,round为取整
           
            for i=1:numPool
                Poolx(i,:)=X(sortindexbest(i),:);
                PoolVx(i,:)=V(sortindexbest(i),:);
            end
            for i=1:numPool  %选择要进行杂交的粒子
                seed1=floor(rand()*numPool)+1;
                seed2=floor(rand()*numPool)+1;
                while seed1==seed2
                seed1=floor(rand()*numPool)+1;
                seed2=floor(rand()*numPool)+1;
                end
                pb=rand;
                %子代的位置计算
                childx1(i,:)=pb*Poolx(seed1,:)+(1-pb)*Poolx(seed2,:);
                %子代的速度计算
                childv1(i,:)=(PoolVx(seed1,:)+PoolVx(seed2,:))*norm(PoolVx(seed1,:))./norm(PoolVx(seed1,:)+PoolVx(seed2,:));
                structure_3D1(:,:,i)=Stucture(childx1(i,:));
                
                if Calc_refl(structure_3D(:,:,i),1)> Calc_refl(structure_3D1(:,:,i),1)
                   X(i,:)=childx1(i,:); %子代的位置替换父代位置
                    V(i,:)=childv1(i,:); %子代的速度替换父代速度
                end         
            end            
        %%进行高斯变异
           mutationpool=round(pm*Size);
       for i=1:mutationpool  %选择要进行变异的粒子
           seed3=floor(rand()*mutationpool)+1;
           mutationchild(i,:)=X(seed3,:)*(1+ randn);
           structure_3D2(:,:,i)=Stucture( mutationchild(i,:));
           if Calc_refl(structure_3D(:,:,i),1)> Calc_refl(structure_3D2(:,:,i),1)
                 X(i,:)=mutationchild(i,:); %子代的位置替换父代位置
           end
       end
    for j=1:Size
    structure_3D(:,:,j)=Stucture(X(j,:));%  used for generating  updated Size 3 dimension structures   structure_3D 
    end
    f_x=Calc_refl(structure_3D,Size); % used for generating  updated Chi-square f_x
    for j=1:Size
        if f_x(j)<f_xbest(j)
            f_xbest(j)=f_x(j);
            Pi(j,:)=X(j,:);
        end
        if f_xbest(j)<f_g
            Pg= Pi(j,:);
            f_g=f_xbest(j);
        end
    end
    
    f_gg(t)=f_g;
    PGG{t}=Pg;
end
%% Obtain the optimal individual
[~,index]=min(f_gg);
best_x=PGG{index(1)};
%% Plot adaptation curves
figure
plot(time,f_gg);
xlabel('Number of iterations');ylabel('Adaption value f_g'); 
end