x = 0:0.01:0.30;

y = 0.0688./x;

 

figure(1)


xx = plot(x,y,'g','Linewidth',0.5)
title('Transmission rate of mosquitos vs humans')
xlabel('Bh')
 ylabel('Bv')

hold on

 

y1 = 0.0478./x;

yy = plot(x,y1,'r','Linewidth',0.5)

 

y2 = 0.0216./x;

zz = plot(x,y2,'b','Linewidth',0.5)

legend([xx,yy,zz],'Ro=1.2','Ro=1','Ro=0.8');

hold off
