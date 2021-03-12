%% Housekeeping

clc;
clear;
close all;

%% Constant declaration
J2 = 1.08263e-3;
T = 5832;
r_p1 = 6878+50;
r_p2 = 6978;
omega_0 = 0;
lambda_f = 0;
RAAN_dot = 0.9856*(pi/180)*(1/(24*60*60));
mu = 398600;
R = 6378;
omega_e = 7.292e-5;

a = (mu*(T/(2*pi))^2)^(1/3);

e1 = (1-(r_p1/a));
e2 = (1-(r_p2/a));

k1 = -(3/2)*((sqrt(mu)*J2*R^2)/(a^(7/2)*(1-e1^2)^2));
k2 = -(3/2)*((sqrt(mu)*J2*R^2)/(a^(7/2)*(1-e2^2)^2));

i1 = acosd(RAAN_dot/k1);
i2 = acosd(RAAN_dot/k2);

omega_dot1 = k1*((5/2)*sind(i1)^2-2);
omega_dot2 = k1*((5/2)*sind(i2)^2-2);

delta_lambda = -(omega_e-RAAN_dot)*T;
lambda_0 = 360+(delta_lambda*(180/pi));
RAAN = 360 - lambda_0 - (-81.55);

