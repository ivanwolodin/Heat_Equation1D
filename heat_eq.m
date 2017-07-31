%% Heat Equation
clear all;clc;

%% discretesation
dt=0.1;
dh=0.05;  % can be crucial to determine! 
time=100;
disrets=100;
%u=zeros(disrets,time);

%% parametres
khi=1;
u=zeros(1,disrets);
u=rand(1,disrets);
figure(1)
imagesc(u);
%% Main Loop
%for i=2:time-1
  
   for i= 0:800000;
         u(:,100)=1; 
    for j=2:disrets-1     
         u(j)=u(j) + ((u(j-1)-2*u(j)+u(j+1))*dh*dh)*dt;
    end
   imagesc(u);
    drawnow;
   end;
close all;


%% Visualization
figure(2)
imagesc(u);
