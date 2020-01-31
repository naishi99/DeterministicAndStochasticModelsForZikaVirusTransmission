P=  [0.89 0.11 0
    0 0.75 0.25
    0 0 1];
mc = dtmc(P);
figure;
graphplot(mc);