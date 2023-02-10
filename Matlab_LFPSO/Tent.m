 %Tent映射
 function [x] = Tent(Max_iter,a)
 x(1)=rand; %初始点
%  a = 0.5;%参数a的值
 for i=1:Max_iter-1
     if x(i)<a
         x(i+1)=2*x(i);
     end
     if x(i)>=a
         x(i+1)=2*(1-x(i)) ;
     end
 end
 end
 