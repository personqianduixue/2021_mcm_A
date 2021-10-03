clc
h=0.1;%所取时间点间隔
ts=[0:h:100];%时间区间
x0=[10,10];%初始条件
opt=odeset('reltol',1e-6,'abstol',1e-9);%相对误差1e-6，绝对误差1e-9
[t,x]=ode45(@fun,ts,x0,opt);%使用5级4阶龙格—库塔公式计算
gc=figure(1);set(gc,'position',[100,100,1000,300])
subplot(131)
plot(t,x(:,1),'r',t,x(:,2),'b','LineWidth',2);grid on;%两个种群增长曲线
title('Two species growth curves')
xlabel('Time')
ylabel('Quantity of this specie')
legend('species 1','species 2','Location','Best')
subplot(132)
plot(x(:,1),x(:,2),'LineWidth',2);grid on;%作相轨线
title('The phase trajectory')
xlabel('species 1')
ylabel('species 2')
subplot(133)
sum=x(:,1)+x(:,2);
plot(t,sum,'g','LineWidth',2);grid on;%种群总增长曲线
title('Sum of population')
xlabel('Time')
ylabel('Sum of fungi quantity')
figure(2)
% subplot(234)
% diffsum=diff(sum);
% plot(t(2:end),diffsum,'r','LineWidth',2)%种群总增长速率
% subplot(235)
% shengyu=exp(-sum./100);
shengyu22=1./(exp(sum./100));
plot(t,shengyu22,'r','LineWidth',2)%剩余量
title('Quantity of biological remains')
save('t.mat','t')
save('shengyu22.mat','shengyu22')

