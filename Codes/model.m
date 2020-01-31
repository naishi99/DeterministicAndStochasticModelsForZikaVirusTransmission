function model
 tspan = [0 300];
 y0 = [499 1 0 350 1];% Here is the initial condition
 [t,y] = ode45(@model,tspan,y0);
 
 title('Plot of mosquito population against time')
 xlabel('Time(years)')
 ylabel('Mosquitos')
 
 
 hold on
 aa = plot(t,y(:,4),'r','Linewidth',1)
 ylim([0 1000]);
 
 bb = plot(t,y(:,5),'g','Linewidth',1)
 ylim([0 1000]);
 
 legend([aa,bb],'Iv','Sv');
 hold off
end