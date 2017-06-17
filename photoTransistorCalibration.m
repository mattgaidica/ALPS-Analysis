% using 10K resistor, full spectrum light, 1-bit A/D on Feather M0,
% Thorlabs PM100D with S121C light sensor
% ambient light: thor: 15uW, 20.81 uW/cm2, ALPS: 1/1024
lightDistance = [18,15,12,9,6,3,0];
photoAD = [50,60,102,166,240,440,580];
thor_mW = [.381,.554,.766,1.057,1.424,2.73,3.6];
thor_mWcm2 = [.537,.781,1.080,1.491,2.008,3.86,5.11];

figure;
plot(photoAD,thor_mWcm2,'k.','markerSize',25);
grid on;
xlabel('ALPS (10-bit value)');
ylabel('ThorLabs (mW/cm^2)');

p = polyfit(photoAD,thor_mWcm2,1)
x1 = linspace(0,1024);
y1 = polyval(p,x1);
hold on;
plot(x1,y1);

p = 0.008441578625266 * photoAD + 0.148527744544961;