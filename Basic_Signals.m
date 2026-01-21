% Unit Step Signal using recursion
% u(n) = u(n-1) + delta(n)

clc;
clear;
close all;

n = 0:20;

delta = zeros(1, length(n));
delta(1) =1 ;

u = zeros(1,length(n)) ;
u(1) = delta(1) ;


for i = 2:length(n)

    u(i) = u(i-1) + delta(i) ;


end


stem(n,u) ;
xlabel(" n -->");
ylabel("Amplitude ^") ;
title("Unit Step Signal using recursion") ;



%  Ramp using Recursion


clc;
clear ;
close all ;


n = 0:10 ;
u = ones(1,length(n));
r = zeros(1, length(n));

for i = 2:length(n)

    r(i) = r(i-1) +u(i) ;
end

stem(n,r);
xlabel("n");
ylabel("Amplitude")
title("Ramp using Recursion") ;

%  Exponential Signal 

clc;
clear;
close all ;

n = 0:20 ;
a = 0.8 ;
x = zeros(1, length(n)) ;
x(1) =1 ;

for i = 2:length(n) 
    x(i) = a*x(i-1) ;
end

stem(n,x) ;
xlabel("n");
ylabel("Amplitude")
title("Negative Exponential Signal ") ;
