clc;
clear all;
close all;
for i=1:20
    r(i)=rand
    if r(i)<0.5
        b(i)=0
    else
        b(i)=1
    end
end
l=length(b);
b(l+1)=0;
n=1;

subplot(5,1,1)
plot(b)
title('unipolar nrz coding using plot command')
xlabel('bit value')
ylabel('amplitude')

subplot(6,1,2)
bar(b)
title('unipolar nrz coding using bar command')
xlabel('bit value')
ylabel('amplitude')

subplot(5,1,3)
stem(b)
title('unipolar nrz coding using stem command')
xlabel('bit value')
ylabel('amplitude')

subplot(5,1,4)
stairs(b)
title('unipolar nrz coding using stairs command')
xlabel('bit value')
ylabel('amplitude')

res=.01;
t=0:res:(l-res)
i=1;
while i<l+1
    for j=((i-1)/res)+1:i/res
            y(j)=b(i);
    end
    i=i+1;
end

subplot(5,1,5)
plot(t,y)
title('unipolar nrz coding using coding')
xlabel('bit value')
ylabel('amplitude')

