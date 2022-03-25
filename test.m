x = 1:1:100;
y = sin(x/10);
y2 = 1+sin(x/10);

plot(x,y,'b')
hold on
scatter(x,y2)