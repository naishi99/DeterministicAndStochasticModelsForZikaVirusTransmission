function SIR2
 tspan = [0 300];
 y0 = [499 1 0 350 1];% Here is the initial condition
 [t,y] = ode45(@model,tspan,y0);
 ww = plot(t,y(:,1),'g','Linewidth',1)
 ylim([0 1000]);
 title('Plot of human population against time')
 xlabel('Time(years)')
 ylabel('Humans')
 
 hold on
 gg = plot(t,y(:,2),'r','Linewidth',1)
 ylim([0 1000]);
 
 cc = plot(t,y(:,3),'b','Linewidth',1)
 ylim([0 1000]);
 
 legend([ww,gg,cc],'Sh','Ih','Rh');
 hold off
end
