line = [0,16,44,62,70,60,40,16,0];
line = line*5/max(line);
theta = [280,300,320,340,0,20,40,60,80];
theta = theta.*2.*pi./360;

figure(1);
polarplot(theta,line);

circle = [20,18,18,18,18,19,18,20,20,18,20,19,20,18,18,18,19,20,20];
circle = circle*5/max(circle);
theta_c =180-(90:10:270);
theta_c = theta_c.*2.*pi./360;

figure(2);
polarplot(theta_c,circle);
