clc; clear all;
n=-10:10;
delta=(n==0);
step=(n>=0);
ramp=n.*(n>=0);
m=0:50;
step2=(m>=0);
x=((0.8).^m).*step2;
sq=5*square((2*pi.*m)/15);
st=5*sawtooth((2*pi.*m)/15);
y=((m>=0)-(m>=10));
subplot(4,3,1);
stem(n,delta);
xlabel('n');
ylabel('x(n)');
title('unit impulse');
subplot(4,3,2);
stem(n,step);
xlabel('n');
ylabel('x(n)');
title('unit step');
subplot(4,3,3);
stem(n,ramp);
xlabel('n');
ylabel('x(n)');
title('unit ramp');
subplot(4,3,4);
stem(m,x);
xlabel('n');
ylabel('x(n)');
title('x=(0.8)^n*u(n)');
subplot(4,3,5);
stem(m,sq);
xlabel('n');
ylabel('x(n)');
title('square wave');
subplot(4,3,6);
stem(m,st);
xlabel('n');
ylabel('x(n)');
title('sawtooth wave');
subplot(4,3,7);
stem(m,y);
xlabel('n');
ylabel('x(n)');
title('x(n)=u(n)-u(n-10)');
