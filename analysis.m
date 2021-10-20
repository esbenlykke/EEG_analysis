%% T1


load('Close_C3.mat')
load('Mouth_C3.mat')
load('Reach_C3.mat')


% Plot individual trials to exclude bad trials


% figure(11)
% for i=1:size(Close_C3,1)
%       subplot(4,7,i)
%    plot(Close_C3(i,:))
%    title(['Movement Close - Trial ' int2str(i)])
%      hold on
%    xline(3600,'r')
%    ylimit(-5)
% end
% 
% % Mouth
% figure(12)
% for i=1:size(Mouth_C3,1)
%       subplot(4,7,i)
%    plot(Mouth_C3(i,:))
%    title(['Movement Mouth - Trial ' int2str(i)])
%    hold on
%    xline(3600,'r')
% end
% 
% % Reach
%    figure(13)
% for i=1:size(Reach_C3,1)
%    subplot(4,7,i)
%    plot(Reach_C3(i,:))
%    title(['Movement Reach - Trial ' int2str(i)])
%      hold on
%    xline(3600,'r')
% end
% 
% 
% 
% 
% 



close_ave_all=mean(Close_C3,1);
mouth_ave_all=mean(Mouth_C3,1);
reach_ave_all=mean(Reach_C3,1);
All=[Close_C3 ; Mouth_C3 ; Reach_C3];
all_ave =mean(All,1)


close_inclu=[1 3 4 5 6 8 9 13 14 16 17 20 22 24 28]
for i=1:length(close_inclu)
    
movement_close_inc(i,:)=Close_C3(close_inclu(i),:);
end

mouth_inclu=[1 3 4 6 8 9 12 13 14 17 19 20 22 24 25 26]
for i=1:length(mouth_inclu)
    
movement_mouth_inc(i,:)=Mouth_C3(mouth_inclu(i),:);
end


reach_inclu=[2 3 4 5 7 8 9 10 11 12 13 14 15 16 17 20 21 22 23 25 26]
for i=1:length(reach_inclu)
    
movement_reach_inc(i,:)=Reach_C3(reach_inclu(i),:);
end

close_ave= mean(movement_close_inc,1);
mouth_ave= mean(movement_mouth_inc,1);
reach_ave= mean(movement_reach_inc,1);
% Plot all

figure(1)
plot(close_ave)
hold on 
plot(mean(Close_C3,1),'r')
title('Close')
   xline(3600,'r')
   legend('Mean only kept trials','Mean all trials')

figure(2)
plot(mouth_ave)

title('Mouth')
hold on 
plot(mean(Mouth_C3,1),'r')
   xline(3600,'r')
      legend('Mean only kept trials','Mean all trials')

figure(3)
plot(reach_ave)
hold on 
plot(mean(Reach_C3,1),'r')
title('Reach')
   xline(3600,'r')
      legend('Mean only kept trials','Mean all trials')


figure(4)
plot(close_ave)
hold on
plot(mouth_ave,'r')
hold on
plot(reach_ave,'g')
hold on 
plot(all_ave,'m')
title('Comparison by movement type')
   xline(3600,'r')
      legend('Close','Mouth','Reach','All movements')
