% close all;

time = errors.time;

error1 = reshape(errors.signals.values(1,1,:),[10001,1]);
error2 = reshape(errors.signals.values(2,1,:),[10001,1]);

figure;

plot(time,error1);
hold on;
plot(time,error2);

figure;

plot(xy(:,1),xy(:,2))
hold on;
plot(xy_d(:,1),xy_d(:,2),'--')