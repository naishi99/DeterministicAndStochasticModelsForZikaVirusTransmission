function start

param.beta = 1e-3;
param.r = 1e-1;    
model_title = 'SIR Model Epidemics';

initial.S = 499;	
initial.I = 1;	
initial.R = 0;	

end_time = 100;

function deriv = ode_system (t, x, param)

S = x(1);
I = x(2);
R = x(3);
dS = -param.beta * S * I;
dI = +param.beta * S * I - param.r * I;

dR = param.r * I;
deriv = [dS; dI; dR];
end

N = initial.S + initial.R + initial.I;
initial_values = [];
variable_names = fieldnames(initial);

for i=1:length(variable_names) 
    initial_values = [initial_values; initial.(variable_names{i})];
end

[t, y] = ode45(@(t, x) ode_system(t, x, param), [0 end_time], initial_values, []);


% plot the results
plot(t, y);
xlabel('time');
ylabel('number of individuals');
title(model_title);

end