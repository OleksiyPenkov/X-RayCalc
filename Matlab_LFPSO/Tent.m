 %Tentӳ��
 function [x] = Tent(Max_iter,a)
 x(1)=rand; %��ʼ��
%  a = 0.5;%����a��ֵ
 for i=1:Max_iter-1
     if x(i)<a
         x(i+1)=2*x(i);
     end
     if x(i)>=a
         x(i+1)=2*(1-x(i)) ;
     end
 end
 end
 