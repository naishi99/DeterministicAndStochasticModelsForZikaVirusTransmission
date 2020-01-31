function BetaH_V
    %q1 = 0.3943;
    %uv = 0.033;
    
    b1 = 0:0.01:1;
    
    q3 = 0.044297./(b1+0.033);
    figure(1)
    plot(b1,q3)
    
    hold on
    
    a = 0.2684*(b1.^0);
    plot(b1,a)
    
    q4 = ((0.18)*(0.1027+b1))./b1;
    plot(b1,q4)
    
    hold off
    
    %xlim([0 1])
    ylim([0 1.2])
end

    