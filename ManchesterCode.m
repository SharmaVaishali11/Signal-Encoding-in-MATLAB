clc;
clear all;
close all;
b=[1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 ];
l=length(b);
b(l+1)=0;
n=1;

subplot(5,1,1)
plot(b)
title('manchester coding using plot command')
xlabel('bit value')
ylabel('amplitude')

subplot(6,1,2)
bar(b)
title('manchester coding using bar command')
xlabel('bit value')
ylabel('amplitude')

subplot(5,1,3)
stem(b)
title('manchester coding using stem command')
xlabel('bit value')
ylabel('amplitude')

subplot(5,1,4)
stairs(b)
title('manchester coding using stairs command')
xlabel('bit value')
ylabel('amplitude')

 while n<=l
    t=(n-1):.001:n;
    if b(n)==1
        if b(n+1)==0
            y=(t<(n-0.5))+(-1)*(t>=n-0.5&t<=n);
        else
            y=(t<(n-0.5)|t==n)+(-1)*(t>=n-0.5&t<n);
        end
    else
        if b(n+1)==1
            y=(-1)*(t<(n-0.5))+(t>=n-0.5&t<=n);
        else
             y=(-1)*(t<(n-0.5)|t==n)+(t>=n-0.5&t<n);
        end
    end
    subplot(5,1,5)
    plot(t,y)
    hold on;
    axis([0 l -1.5 1.5]);
    n=n+1;
 end
title('Manchester code using coding');
xlabel('bit value');
ylabel('Amplitude');