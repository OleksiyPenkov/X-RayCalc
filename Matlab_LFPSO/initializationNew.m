%% 基于Tent映射的种群初始化
function Positions=initializationNew(SearchAgents_no,dim,ub,lb,a)
Boundary_no= size(ub,2); % numnber of boundaries
Positions=zeros(SearchAgents_no,Boundary_no);
% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    for i = 1:SearchAgents_no
        Temp = Tent(dim,a).*(ub-lb)+lb;
        Temp(Temp>ub) = ub;
        Temp(Temp<lb) = lb;
        Positions(i,:)=Temp;
    end
end

% If each variable has a different lb and ub
if Boundary_no>1
   for j = 1:SearchAgents_no
       TentValue =  Tent(dim,a);
        for i=1:dim
            ub_i=ub(i);
            lb_i=lb(i);
            Positions(j,i)=TentValue(i).*(ub_i-lb_i)+lb_i;
            if(Positions(j,i)>ub_i)
                Positions(j,i) = ub_i;
            end
            if(Positions(j,i)<lb_i)
                Positions(j,i) = lb_i;
            end
        end
   end
end
end




