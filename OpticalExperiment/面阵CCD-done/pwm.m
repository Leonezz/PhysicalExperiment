function y = pwm(L,T,num,high,low)
%myFun - Description
%  
% Syntax: y = myFun(input)L,T,numLong description
y = [high.*ones(1,L),low.*ones(1,T-L)];
for i=1:num
    y = [y,high.*ones(1,L),low.*ones(1,T-L)];
end
end