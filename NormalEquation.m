%in barname Matlab baraye NORMAL EQUATION ast.baraye
%ejraye barname hame barname ra entekhab karde(crtl+a va crtl+c)va dar
%workspace matlab paste namaeid.

clc;
clear all;
close all;
%load data shamele 70% train data va 30%test data
load mydata
x=c;
y=d;
L = length(y); 
x = [ ones(L,1) x]; 
F = size(x,2); 
Teta = [0;0];
T_Hazine = [0;0];

	T_Farzie = (x*Teta); %tabe farzie
	T_Farzie_v = T_Farzie*ones(1,F);
	Y = y*ones(1,F);
	Teta = inv(x'*x)*x'*y; %normal equation
	T_Hazine = (1/2*L)*sum(((T_Farzie_v - Y)).^2).'; %tabe e hazine 
    
%tarsime tasivre train
figure(1);
plot(x(:,2),y, 'ro');
hold on
plot(x(:,2),x*Teta,'b*-');
legend('data', 'pishbini shode');
grid on;
xlabel('x');
ylabel('y');
title('rasme Taabe Farzie baraye dade haye Amuzesh normal equation');
%tarsime tasivre test
hh=Teta(1,:)+Teta(2,:)*e;
ll=length(f);
figure(2);
plot(e,f, 'o');
hold on
plot(e,hh,'rp-');
legend('data', 'pishbini shode');
xlabel('x');
ylabel('y');
title('rasme Taabe Farzie baraye dade haye Test normal equation');

%mohasebe error data test
T_Hazine1(:,:) = (sum(((e - f).^2).'))/(e.^2);
error=sum((T_Hazine1))/ll
