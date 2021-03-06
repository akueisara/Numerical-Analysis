clear;
a=1.3;
b=2;
tol = 10^(-5);
mid = (a+b)/2;
i = 1;
function y = f(x)
  y = log(x-1) + cos(x-1);
endfunction 
  while abs(f(mid))>tol & i<100 
    if sign(f(mid))==sign(f(a))
      a = mid;
    else 
      b = mid;
end
x(i) = i;
y(i) = f(mid);
  i=i+1;
  mid=(a+b)/2;  
end 
disp(mid);
plot2d1(x,y);
title('49553023 Kuei-Jung Hu','color','m','fontsize',3);
xlabel('x-axis');
ylabel('y-axis');

