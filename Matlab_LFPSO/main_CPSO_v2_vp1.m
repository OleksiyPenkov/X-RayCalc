function [best_x , f_gg]=main_CPSO_v2_vp1(Stucture,Xmax,Xmin,Size,Tmax)
%% PSO parameters
dimension=length(Xmax);%dimension
% Size=4;% Size
% Tmax=3;%%iteration  Tmax
c1=1.49445;
c2=1.49445;%study factor
 w_max = 0.8;                        
 w_min = 0.1;
k=0.2;%Proportional relationship between position and velocity
Vmax= Xmax*k;
Vmin=-Vmax;   
u=3.999;
MaxC=10;
a=0.5;
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
        V(j,index1) =  rand*(Vmax(index1)-Vmin(index1))+Vmin(index1);
          index1=  find(V(j,:)<Vmin);
          V(j,index1) = rand*(Vmax(index1)-Vmin(index1))+Vmin(index1);
          
        X(j,:)= X(j,:)+V(j,:);  %position update
         
      index1 = find(X(j,:)>Xmax);
      X(j,index1) = rand*(Xmax(index1)-Xmin(index1))+Xmin(index1);
      index1=  find(X(j,:)<Xmin);
      X(j,index1) = rand*(Xmax(index1)-Xmin(index1))+Xmin(index1);
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
    
       %chaotic mapping
%         y=zeros(Size,dimension);
%         y(1,:)=(Pg-Xmin)/(Xmax-Xmin);
%         structure_3D(:,:,1)=Stucture(y(1,:));
%         f_x(1)=Calc_refl(structure_3D(:,:,1),1);
%         for tt=1:Size-1 
%             for e=1:dimension
%                 
%                  y(tt+1,e)=u*y(tt,e).*(1-y(tt,e)); 
%                  
%             end
%             y(tt+1,:)=Xmin+(Xmax-Xmin).*y(tt+1,:);   
%         structure_3D(:,:,tt+1)=Stucture(y(tt+1,:));
%        f_x(tt+1)=Calc_refl(structure_3D(:,:,tt+1),1); 
%         end
%          
%            
%         [~,ybestindex]=min(f_x);%寻找最优混沌可行解矢量
%       ybest=y(ybestindex,:);
%      ran=1+fix(rand()*Size);%产生一随机数1~sizepop之间
%      X(ran,:)=ybest;
     
%     f_gg(t)=f_g;
% %     PGG{t}=Pg;
%       [sort_f_x,index]=sort(f_xbest);
%       Nbest=round(Size*0.2);
% %       if f_g<sort_f_x(1)
% %           X(index(1),:)=Pg;
% %           sort_f_x(1) =f_g;
% %       end
%       cx=zeros(1,dimension);
%      for n=1: Nbest
%          tmpx=X(index(n),:);
%          for k=1:MaxC 
%                   
%              for dim=1:dimension
%                    cx(dim)=(tmpx(1,dim)-Xmin(dim))/(Xmax(dim)-Xmin(dim));
%                    cx(dim)=4*cx(dim)*(1-cx(dim));
%              
%                 tmpx(1,dim)=Xmin(dim)+cx(dim)*(Xmax(dim)-Xmin(dim));
%              end
%               structure_3D_1=Stucture(tmpx);
%                fcs=Calc_refl(structure_3D_1,1);
% %               fcs=Fitness_Function(tmpx,deg00,rdata,refl_inv);
%               if fcs<sort_f_x(n)
%                   X(index(n),:)=tmpx;
%                   break;
%               end
%          end
% %          X(index(n),:)=tmpx;
%      end
%       X(1:Nbest,:)=X(index(1:Nbest),:);
%       Pg=X(index(1),:);
%         for s=1:dimension
%         XXmin(s)=max(Xmin(s),Pg(s)-rand*(Xmax(s)-Xmin(s)));
%         XXmax(s)=min(Xmax(s),Pg(s)+rand*(Xmax(s)-Xmin(s)));
%         end
%           VVVmin=k* XXmin;
%           VVVmax=k* XXmax;
%          for i=Nbest+1:Size
%             V(i,:) = VVVmin+(VVVmax-VVVmin).*rand(1,dimension);   
%             X(i,:)=XXmin+(XXmax-XXmin).*rand(1,dimension); 
%          end
%          for j=1:Size
%     structure_3D(:,:,j)=Stucture(X(j,:)); 
%          end
%     f_x=Calc_refl(structure_3D,Size);
%       for j=1:Size
%         if f_x(j)<f_xbest(j)
%             f_xbest(j)=f_x(j);
%             Pi(j,:)=X(j,:);
%         end
%         if f_xbest(j)<f_g
%             Pg= Pi(j,:);
%             f_g=f_xbest(j);
%         end
%      end
            
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