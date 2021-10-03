h=0.1;%所取时间点间隔
ts=[0:h:100];%时间区间
x0=[10];%初始条件
opt=odeset('reltol',1e-6,'abstol',1e-9);%相对误差1e-6，绝对误差1e-9
olsonfun=@(x,y) -(x*x-x)*y;
[t,x]=ode45(olsonfun,ts,x0,opt);%使用5级4阶龙格—库塔公式计算
plot(t,x,'r','LineWidth',2)