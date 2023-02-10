function [best_x , f_gg]=main_CPSO_v2_vp3(Stucture,Xmax,Xmin,Size,Tmax)
%% PSO parameters
dimension=length(Xmax);%dimension
c1 = 1.49445;
c2 = 1.49445;
c1min = 1;
c1max = 2;
c2min = 1;
c2max = 2;
 w_max = 0.8;                        
 w_min = 0.1;
k=0.2;
Vmax= Xmax*k;
Vmin=-Vmax;   
u=3.999;
MaxC=10;
a=0.5;
%% initialization population
% X=initializationNew(Size,dimension,Xmax,Xmin,a);
% V =0.3*initializationNew(Size,dimension,Xmax,Xmin,a);
 X = rand(Size,dimension).*(Xmax-Xmin)+Xmin;
  V = rand(Size,dimension).*(Vmax-Vmin)+Vmin;
Pi=X;  
for j=1:Size
   structure_3D(:,:,j)=Stucture(X(j,:));% used for generating Size structures      
end
f_x=Calc_refl(structure_3D,Size);% used for generating Chi-square  20x1 double
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
        
        fworst = max(f_x);
%         c1 = c1min + (c1max-c1min)*( (f_x(j)-f_xbest(j))./( fworst-f_xbest(j)+eps ) );
%         c2 = c2min + (c2max-c2min)*( (f_x(j)-f_g)./( fworst-f_g+eps ) );
%         w = w_min+(w_max-w_min)*( 1- f_g./( f_x(j)+eps ));   % 权重系数
%         w=0.1+0.8*(1-t/Tmax);
      if rand<0.5
        V(j,:) = w*V(j,:) + c1*r1*(Pi(j,:)-X(j,:)) + c2*r2*(Pg-X(j,:));  %Speed Update
        
        index1 = find(V(j,:)>Vmax);
        V(j,index1) = rand*(Vmax(index1)-Vmin(index1))+Vmin(index1);
          index1=  find(V(j,:)<Vmin);
          V(j,index1) =rand*(Vmax(index1)-Vmin(index1))+Vmin(index1);
          
        X(j,:)= X(j,:)+V(j,:);  %position update
         
      index1 = find(X(j,:)>Xmax);
      X(j,index1) = rand*(Xmax(index1)-Xmin(index1))+Xmin(index1);
      index1=  find(X(j,:)<Xmin);
      X(j,index1) = rand*(Xmax(index1)-Xmin(index1))+Xmin(index1);    
      else
           z=levy(1,dimension,1.5);
            step=0.01*z.*X(j,:);
%             Levy_walk=X(j,:)+step.*(Pg-X(j,:));
            Levy_walk=X(j,:)+step.*rand(1,dimension);
            V(j,:) = w*Levy_walk + c1*r1*(Pi(j,:)-X(j,:)) + c2*r2*(Pg-X(j,:));
            X(j,:) = V(j,:); 
             index1 = find(V(j,:)>Vmax);
         V(j,index1) = rand*(Vmax(index1)-Vmin(index1))+Vmin(index1);
          index1=  find(V(j,:)<Vmin);
          V(j,index1) = rand*(Vmax(index1)-Vmin(index1))+Vmin(index1);
            index1 = find(X(j,:)>Xmax);
      X(j,index1) = rand*(Xmax(index1)-Xmin(index1))+Xmin(index1);
      index1=  find(X(j,:)<Xmin);
      X(j,index1) = rand*(Xmax(index1)-Xmin(index1))+Xmin(index1);    
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

end