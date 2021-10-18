%% T1


load('Close_C3.mat')
load('Mouth_C3.mat')
load('Reach_C3.mat')
% Close
figure(11)
for i=1:size(Close_C3,1)
   rest_close(i,:)=Close_C3(i,1:3600);
   movement_close(i,:)=Close_C3(i,3601:end);
      subplot(4,7,i)
   plot(movement_close(i,:))
   title(['Movement Close - Trial ' int2str(i)])
end

rest_close_ave=mean(rest_close,2);
movement_close_ave=mean(movement_close,2);

% Mouth
figure(12)
for i=1:size(Mouth_C3,1)
   rest_mouth(i,:)=Mouth_C3(i,1:3600);
   movement_mouth(i,:)=Mouth_C3(i,3601:end);
      subplot(4,7,i)
   plot(movement_mouth(i,:))
   title(['Movement Mouth - Trial ' int2str(i)])
end

rest_mouth_ave=mean(rest_mouth,2);
movement_mouth_ave=mean(movement_mouth,2);

% Reach
   figure(13)
for i=1:size(Reach_C3,1)
   rest_reach(i,:)=Reach_C3(i,1:3600);
   movement_reach(i,:)=Reach_C3(i,3601:end);

   subplot(4,7,i)
   plot(movement_reach(i,:))
   title(['Movement Reach - Trial ' int2str(i)])
end

rest_reach_ave=mean(rest_reach,2);
movement_reach_ave=mean(movement_reach,2);







% To do : reject trials that are not good enough 






% Plot all

figure(1)
plot(movement_close_ave)
title('Movement phase - Close')

figure(2)
plot(movement_mouth_ave)
title('Movement phase - Mouth')

figure(3)
plot(movement_reach_ave)
title('Movement phase - Reach')


figure(4)
plot(movement_close_ave)
hold on
plot(movement_mouth_ave,'r')
hold on
plot(movement_reach_ave,'g')
