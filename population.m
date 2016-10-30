figure
plot(0:frame-1,Zn,'r','LineWidth',2)
hold on;
plot(0:frame-1,Hn,'b','LineWidth',2)
xlabel('Time')
ylabel('Population')
legend('Zombie','Human')
