clear all; close all;

B = readtable('MEE390Lab1PartB.csv');
A = B{:,:};


m1 = mean(A(1:460,2));
m2 = mean(A(1:391,4));
m3 = mean(A(1:1902,6));
m4 = mean(A(1:3704,8));
m5 = mean(A(1:7408,10));
m6 = mean(A(:,12));





x1 = [56,110,220,450,1000,1100];
y1 = [m1,m2,m3,m4,m5,m6];
scatter(x1,y1,100,'filled');
yline(-3.5);


%for i = 1:2:12
%    i
%    f = figure();
%    plot(A(:,i),A(:,i+1));
%    xlabel('time in seconds','FontSize',20);
%    ylabel('voltage in volts','FontSize',20);
%end

x = [0,2,4,2,4];
y = [4,2.6,13,8,18];





%scatter(x,y,100,'filled');
%refline
%xlim([0,6]);
%ylim([0,20]);
xlabel('sampling frequency','FontSize',16);
ylabel('Mean Voltage','FontSize',16);


set(f,'KeyPressFcn',@myfun);
function myfun(src,event)
   if event.Key == 'x' | event.Key == 'X' 
       close(src);
   end
end