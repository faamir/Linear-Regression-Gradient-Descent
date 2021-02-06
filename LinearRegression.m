%in barname Matlab baraye LINEAR REGRESSION ba GRADIENT DESCENT ast.baraye
%ejraye barname hame barname ra entekhab karde(crtl+a va crtl+c)va dar
%workspace matlab paste namaeid.baraye estefae az normal sazi data ha az
%load mydatadev va Alfa marbute estefade konid.

clc;
clear all;
close all;
%load data shamele 70% train data va 30%test data

%data haye normal sazi shode

%load mydatadev 

%formule sazi baraye data haye normal sazi shode.tavajoh shavad ke inja
%faghat data haye train in eghdam anjam mipazirad va faghat formule kar
%tashrih shode ast.baraye anjame in amal bayad kole dade ha entekhab
%shavand.pas ba formule zir eghdam be ejraye barname nakonid va az
%mydatadev estefade konid ke marahele kar anjam shode ast.
%NM=length(c);
%MM=sum(c)/NM;
%sss=sum(c);
%STDV=sqrt(((sss-MM).^2)/(NM-1));
%c(:,1)=(c-MM)/STDV;
%x=c

%data haye saade
load mydata
x=c;
y=d;
L = length(y); 
x = [ ones(L,1) x]; 
F = size(x,2); 
Teta = [0;0];
%zarib gaame alfa
Alfa = 0.002;
%alfa baraye data haye normalsazi shode
%Alfa = 0.2;
T_Hazine = [0;0];
for n = 1:10000 %tedad tekrare algorithm
	T_Farzie = (x*Teta); %tabe farzie
	T_Farzie_v = T_Farzie*ones(1,F);
	Y = y*ones(1,F);
	Teta = Teta - Alfa*1/L*sum((T_Farzie_v - Y).*x).';%moshtaghe tabe e hazine gradient descent
	T_Hazine(:,n) = (1/2*L)*sum(((T_Farzie_v - Y)).^2).';  %tabe e hazine 
end

%tarsime tasivre train
figure(1);
plot(x(:,2),y, 'ro');
hold on
plot(x(:,2),T_Farzie,'b*-');
legend('data', 'pishbini shode');
grid on;xlabel('x');ylabel('y');title('rasme Taabe Farzie baraye dade haye AMUZESH ,Gradient descent');
%tarsime tasivre test
hh=Teta(1,:)+Teta(2,:)*e;
LL=length(f);
figure(2);
plot(e(:,1),f, 'ro');
hold on
plot(e(:,1),hh,'b*-');
legend('data', 'pishbini shode');
grid on;
xlabel('x');
ylabel('y');
title('rasme Taabe Farzie baraye dade haye Test ,Gradient descent');
%mohasebe error data test
T_Hazine1(:,:) = (sum(((e - f).^2).'))/(e.^2);
error=sum((T_Hazine1))/LL

figure(3);
plot(1:n,T_Hazine(1,:),'-');xlabel('dor ha');ylabel('Tabe Hazine');title(['nemudare taghirate Tabe Hazine nesbat be dor haye algorithm ba alfa: ' num2str(Alfa)]);
