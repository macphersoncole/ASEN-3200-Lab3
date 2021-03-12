%% Housekeeping
clc;
clear;
close all;

%% Constants
mu_sun = 132712000000;
a_E = 149.6e6;
a_M = 227.9e6;
r_p = a_E;
r_a = a_M;

%% Question 7
a = (r_p+r_a)/2;
TOF_tot1 = (1/2)*(2*pi*sqrt(a^3/mu_sun));
V_E = sqrt(mu_sun/a_E);
V_M = sqrt(mu_sun/a_M);
V_p = sqrt((2*mu_sun/r_p)-(mu_sun/a));
V_a = sqrt((2*mu_sun/r_a)-(mu_sun/a));

deltaV_p = abs(V_p-V_E);
deltaV_a = abs(V_a-V_M);
deltaV_tot = abs(V_p-V_E) + abs(V_a-V_M);

%% Question 10
r_a1 = 2.7*149597871;
a1 = (r_p+r_a1)/2;
V_p1 = sqrt((2*mu_sun/r_p)-(mu_sun/a1));
deltaV_p1 = abs(V_p1-V_E);
TOF1 = (1/2)*(2*pi*sqrt(a1^3/mu_sun));
V_a1 = sqrt((2*mu_sun/r_a1)-(mu_sun/a1));
a2 = (r_a+r_a1)/2;
TOF2 = (1/2)*(2*pi*sqrt(a2^3/mu_sun));
V_a2 = sqrt((2*mu_sun/r_a1)-(mu_sun/a2));
deltaV_a1 = abs(V_a1-V_a2);
V_p2 = sqrt((2*mu_sun/r_a)-(mu_sun/a2));
deltaV_p2 = abs(V_p2-V_M);
deltaV_tot2 = deltaV_p1 + deltaV_p2 + deltaV_a1;
TOF_tot2 = TOF1 + TOF2;