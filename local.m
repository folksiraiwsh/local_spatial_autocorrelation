%6030826721 Sirawish Thawinthai
clear
clc
format short G
% Contiguity Matrix
cm =[ 0 1 0 0 1
    1 0 1 0 1
    0 1 0 1 1
    0 0 1 0 1
    1 1 1 1 0];

% Sum of Contiguity Matrix Rows
s = sum(cm,2)

% Row Standardized Spatial Weights Matrix
w = cm./s
% Wat_Somanat_g_TOTAL = 2004
% Khlong_Mahanak_g_TOTAL = 2473
% Wat_Dhebsirin_g_TOTAL = 1886
% Pom_Prab_Satru_Pai_g_TOTAL =3655 
% Barn_Batr_g_TOTAL = 2028
x = [2004
    2473
    1886
    3655
    2028];

% Z-Scores for a Population  
z = zscore(x,1)

% LISA
I = z.*(w*z)