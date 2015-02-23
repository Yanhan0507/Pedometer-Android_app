clear;clc;
FILE_NAME='acc4.csv';
acc=csvread(FILE_NAME,1,0);
time=csvread(FILE_NAME,0,0,[0 0 0 0]);
x=acc(:,1);y=acc(:,2);z=acc(:,3);
sqrt_xyz=sqrt(x.^2+y.^2+z.^2);

% figure(1);
% subplot(2,1,1)
% plot(x);
% subplot(2,1,2)
% plot(abs(fft(x)));
% 
% figure(2);
% subplot(2,1,1)
% plot(y);
% subplot(2,1,2)
% plot(abs(fft(y)));
% 
% figure(3);
% subplot(2,1,1)
% plot(z);
% subplot(2,1,2)
% plot(abs(fft(z)));

figure(4);
subplot(2,1,1)
plot(sqrt_xyz);
subplot(2,1,2)
plot(abs(fft(sqrt_xyz)));

Num=[-0.000132383805054862,-0.000234377554306125,-0.000373516334821081,-0.000474151820369099,-0.000435874141159736,-0.000110387885833903,0.000694690598123732,0.00220209121791377,0.00464088356475095,0.00821390144853384,0.0130603728533177,0.0192192334396567,0.0265995104333637,0.0349639722311742,0.0439308390201160,0.0529958745951652,0.0615739990402997,0.0690562232209891,0.0748748316713506,0.0785679030532107,0.0798338580916951,0.0785679030532107,0.0748748316713506,0.0690562232209891,0.0615739990402997,0.0529958745951652,0.0439308390201160,0.0349639722311742,0.0265995104333637,0.0192192334396567,0.0130603728533177,0.00821390144853384,0.00464088356475095,0.00220209121791377,0.000694690598123732,-0.000110387885833903,-0.000435874141159736,-0.000474151820369099,-0.000373516334821081,-0.000234377554306125,-0.000132383805054862];

figure(5);
plot(conv(Num,sqrt_xyz));
