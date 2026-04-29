%Initial values
m = 1000;
c = 500;
f_values = [20000 40000 60000 80000];
%Create data and plot
for i = 1:4
    f = f_values(i);
    [t,v] = ode45(@(t,v) (f-c*v)/m, [0 10], 0);
% Plot
    plot(t, v, 'LineWidth', 2)
    hold on
end
title("Rocket Propulsion Application")
grid on
xlabel("Time")
ylabel("Velocity")
legend('20,000 N','40,000 N','60,000 N','80,000 N','Location','southeast')

