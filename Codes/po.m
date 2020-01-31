ho = 0:0.1:10;
co = 0;
vo = 0;

v1 = 0:0.01:10;
h1 = 0;

q1 = 0.3943;
q2 = 0.3943;
q3 = 0.2684;

y = (0.3943.^ho)*(0.3943.^co)*(0.2684.^vo);

y1 = (0.3943.^h1)*(0.3943.^co)*(0.2684.^v1);

title('Probability of disease extinction')
xlabel('Ih,Iv')
ylabel('Po')

hold on 

xx = plot(ho,y,'g','Linewidth',0.5);

yy = plot(v1,y1,'r','Linewidth',0.5);

legend([xx,yy],'Ih with Iv constant','Iv with Ih constant');

hold off