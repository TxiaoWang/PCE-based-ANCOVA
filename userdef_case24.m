%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% by Xiaoting Wang McGill University (2022)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%*************************************************************************
function userdef = userdef_case24()

%% 1. Specify the locations at where the wind power plants are installed.
% *************************************************************************

%   Bus_I, Gen_Idx,   c,         k,        Pr,      Vr,      Vin,    Vout,    -PF,      +PF.
userdef.wind = [...
     10      5     11.576     2.702    150.000  13.5000   3.5000  25.0000  -0.9500   0.9500;
     25     11     11.576     2.702    150.000  13.8000   3.5000  25.0000  -0.9500   0.9500;
     26     12     11.576     2.702    150.000  13.0000   5.0000  25.0000  -0.9500   0.9500;
];


%% 2. Specify the locations at where the solar PV power plants farms are installed.
% *************************************************************************

% Bus_I,   Gen_Idx, alpha,     beta,    min,      max,         Pr,       Rc,      Rstd,      -PF,     +PF.
userdef.solar = [...
     12      6     1.1100     0.7300   0.0000  1000.0000    150.000   150.0000  1000.0000  -1.0000   1.0000;
     59     25     1.1100     0.7300   0.0000  1000.0000    150.000   150.0000  1000.0000  -1.0000   1.0000;
     61     26     1.1100     0.7300   0.0000  1000.0000    150.000   150.0000  1000.0000  -1.0000   1.0000;
];


%% 3. Specify the correlation.
% *************************************************************************
%Dependency using a Gaussian copula is as follows:
Copula.Type = 'Gaussian';
% Correlation coefficients:
Copula.RankCorr = [1.0   0.2  0.3     0.0   0.0     0.0;
                   0.2   1.0  0.1     0.0   0.0     0.0;
                   0.3   0.1  1.0    -0.2   0.0     0.0;
                   0.0   0.0  -0.2    1.0   0.28   0.35;
                   0.0   0.0  0.0     0.28  1.0    0.16;
                   0.0   0.0  0.0     0.35  0.16    1.0];
                   
