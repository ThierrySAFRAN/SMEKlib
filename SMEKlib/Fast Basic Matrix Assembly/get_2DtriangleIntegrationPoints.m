function [x, w] = get_2DtriangleIntegrationPoints(p)
%get_2DtriangleIntegrationPoints Gaussian quadrature points and weights.
%
% [x, w] = get_2DtriangleIntegrationPoints(p)
% returns the integration points x and weights w so that a bivariate
% polynomial of order <= p is integrated exactly. (Up to p = 19).
%
% Copyright (c) 2016 Aalto University / Antti Lehikoinen
% Computation of data points 1993 Jukka Sarvas, Rolf Nevanlinna Institute

% removing some redundancy
n = p;
if (p == 11)
    n = 12;
elseif (p == 15) || (p == 16)
    n = 17;
elseif p >= 18
    n = 19;
end

% tabulation
switch n
    case 1
        T = [3.33333333333333e-01
            3.33333333333333e-01
            5.00000000000000e-01];
    case 2
        T = [1.66666666666666e-01
            6.66666666666667e-01
            1.66666666666667e-01
            6.66666666666667e-01
            1.66666666666667e-01
            1.66666666666666e-01
            1.66666666666667e-01
            1.66666666666667e-01
            1.66666666666667e-01];
    case 3
        T = [   3.33333333333333e-01
            2.00000000000000e-01
            6.00000000000000e-01
            2.00000000000000e-01
            3.33333333333333e-01
            6.00000000000000e-01
            2.00000000000000e-01
            2.00000000000000e-01
            -2.81250000000000e-01
            2.60416666666667e-01
            2.60416666666667e-01
            2.60416666666667e-01];
    case 4
        T = [   4.45948490915965e-01
            9.15762135097699e-02
            1.08103018168070e-01
            8.16847572980459e-01
            4.45948490915965e-01
            9.15762135097710e-02
            1.08103018168070e-01
            8.16847572980459e-01
            4.45948490915965e-01
            9.15762135097710e-02
            4.45948490915965e-01
            9.15762135097699e-02
            1.11690794839006e-01
            5.49758718276610e-02
            1.11690794839006e-01
            5.49758718276610e-02
            1.11690794839006e-01
            5.49758718276610e-02];
    case 5
        T = [   3.33333333333333e-01
            4.70142064105115e-01
            1.01286507323457e-01
            5.97158717897700e-02
            7.97426985353087e-01
            4.70142064105115e-01
            1.01286507323456e-01
            3.33333333333333e-01
            5.97158717897700e-02
            7.97426985353087e-01
            4.70142064105115e-01
            1.01286507323456e-01
            4.70142064105115e-01
            1.01286507323457e-01
            1.12500000000000e-01
            6.61970763942530e-02
            6.29695902724135e-02
            6.61970763942530e-02
            6.29695902724135e-02
            6.61970763942530e-02
            6.29695902724135e-02];
    case 6
        T = [2.49286745170911e-01
            6.30890144915021e-02
            5.01426509658179e-01
            8.73821971016996e-01
            2.49286745170910e-01
            6.30890144915020e-02
            6.36502499121399e-01
            3.10352451033784e-01
            5.31450498448170e-02
            5.31450498448170e-02
            3.10352451033784e-01
            6.36502499121399e-01
            5.01426509658179e-01
            8.73821971016996e-01
            2.49286745170910e-01
            6.30890144915020e-02
            2.49286745170911e-01
            6.30890144915021e-02
            5.31450498448170e-02
            5.31450498448170e-02
            3.10352451033784e-01
            6.36502499121399e-01
            6.36502499121399e-01
            3.10352451033784e-01
            5.83931378631895e-02
            2.54224531851035e-02
            5.83931378631895e-02
            2.54224531851035e-02
            5.83931378631895e-02
            2.54224531851035e-02
            4.14255378091870e-02
            4.14255378091870e-02
            4.14255378091870e-02
            4.14255378091870e-02
            4.14255378091870e-02
            4.14255378091870e-02];
    case 7
        T = [3.33333333333333e-01
            2.60345966079040e-01
            6.51301029022160e-02
            4.79308067841920e-01
            8.69739794195568e-01
            2.60345966079040e-01
            6.51301029022160e-02
            6.38444188569810e-01
            3.12865496004874e-01
            4.86903154253160e-02
            4.86903154253160e-02
            3.12865496004874e-01
            6.38444188569810e-01
            3.33333333333333e-01
            4.79308067841920e-01
            8.69739794195568e-01
            2.60345966079040e-01
            6.51301029022160e-02
            2.60345966079040e-01
            6.51301029022160e-02
            4.86903154253160e-02
            4.86903154253160e-02
            3.12865496004874e-01
            6.38444188569810e-01
            6.38444188569810e-01
            3.12865496004874e-01
            -7.47850222338410e-02
            8.78076287166040e-02
            2.66736178044190e-02
            8.78076287166040e-02
            2.66736178044190e-02
            8.78076287166040e-02
            2.66736178044190e-02
            3.85568804451285e-02
            3.85568804451285e-02
            3.85568804451285e-02
            3.85568804451285e-02
            3.85568804451285e-02
            3.85568804451285e-02];
    case 8
        T = [3.33333333333333e-01
            4.59292588292723e-01
            1.70569307751760e-01
            5.05472283170311e-02
            8.14148234145540e-02
            6.58861384496480e-01
            8.98905543365938e-01
            4.59292588292723e-01
            1.70569307751760e-01
            5.05472283170310e-02
            7.28492392955404e-01
            2.63112829634638e-01
            8.39477740995800e-03
            8.39477740995800e-03
            2.63112829634638e-01
            7.28492392955404e-01
            3.33333333333333e-01
            8.14148234145540e-02
            6.58861384496480e-01
            8.98905543365938e-01
            4.59292588292723e-01
            1.70569307751760e-01
            5.05472283170310e-02
            4.59292588292723e-01
            1.70569307751760e-01
            5.05472283170311e-02
            8.39477740995800e-03
            8.39477740995800e-03
            2.63112829634638e-01
            7.28492392955404e-01
            7.28492392955404e-01
            2.63112829634638e-01
            7.21578038388935e-02
            4.75458171336425e-02
            5.16086852673590e-02
            1.62292488115990e-02
            4.75458171336425e-02
            5.16086852673590e-02
            1.62292488115990e-02
            4.75458171336425e-02
            5.16086852673590e-02
            1.62292488115990e-02
            1.36151570872175e-02
            1.36151570872175e-02
            1.36151570872175e-02
            1.36151570872175e-02
            1.36151570872175e-02
            1.36151570872175e-02];
    case 9
        T = [   3.33333333333333e-01
            4.89682519198737e-01
            4.37089591492936e-01
            1.88203535619032e-01
            4.47295133944519e-02
            2.06349616025250e-02
            1.25820817014127e-01
            6.23592928761935e-01
            9.10540973211095e-01
            4.89682519198738e-01
            4.37089591492937e-01
            1.88203535619033e-01
            4.47295133944530e-02
            7.41198598784498e-01
            2.21962989160766e-01
            3.68384120547360e-02
            3.68384120547360e-02
            2.21962989160766e-01
            7.41198598784498e-01
            3.33333333333333e-01
            2.06349616025250e-02
            1.25820817014127e-01
            6.23592928761935e-01
            9.10540973211095e-01
            4.89682519198738e-01
            4.37089591492937e-01
            1.88203535619033e-01
            4.47295133944530e-02
            4.89682519198737e-01
            4.37089591492936e-01
            1.88203535619032e-01
            4.47295133944519e-02
            3.68384120547360e-02
            3.68384120547360e-02
            2.21962989160766e-01
            7.41198598784498e-01
            7.41198598784498e-01
            2.21962989160766e-01
            4.85678981413995e-02
            1.56673501135695e-02
            3.89137705023870e-02
            3.98238694636050e-02
            1.27888378293490e-02
            1.56673501135695e-02
            3.89137705023870e-02
            3.98238694636050e-02
            1.27888378293490e-02
            1.56673501135695e-02
            3.89137705023870e-02
            3.98238694636050e-02
            1.27888378293490e-02
            2.16417696886445e-02
            2.16417696886445e-02
            2.16417696886445e-02
            2.16417696886445e-02
            2.16417696886445e-02
            2.16417696886445e-02];
    case 10
        T = [   3.33333333333333e-01
            4.85577633383658e-01
            1.09481575485037e-01
            2.88447332326850e-02
            7.81036849029926e-01
            4.85577633383657e-01
            1.09481575485037e-01
            5.50352941820999e-01
            7.28323904597411e-01
            9.23655933587501e-01
            3.07939838764121e-01
            2.46672560639903e-01
            6.68032510122000e-02
            1.41707219414880e-01
            2.50035347626860e-02
            9.54081540029900e-03
            1.41707219414880e-01
            2.50035347626860e-02
            9.54081540029900e-03
            3.07939838764121e-01
            2.46672560639903e-01
            6.68032510122000e-02
            5.50352941820999e-01
            7.28323904597411e-01
            9.23655933587501e-01
            3.33333333333333e-01
            2.88447332326850e-02
            7.81036849029926e-01
            4.85577633383657e-01
            1.09481575485037e-01
            4.85577633383658e-01
            1.09481575485037e-01
            1.41707219414880e-01
            2.50035347626860e-02
            9.54081540029900e-03
            1.41707219414880e-01
            2.50035347626860e-02
            9.54081540029900e-03
            3.07939838764121e-01
            2.46672560639903e-01
            6.68032510122000e-02
            5.50352941820999e-01
            7.28323904597411e-01
            9.23655933587501e-01
            5.50352941820999e-01
            7.28323904597411e-01
            9.23655933587501e-01
            3.07939838764121e-01
            2.46672560639903e-01
            6.68032510122000e-02
            4.54089951913770e-02
            1.83629788782335e-02
            2.26605297177640e-02
            1.83629788782335e-02
            2.26605297177640e-02
            1.83629788782335e-02
            2.26605297177640e-02
            3.63789584227100e-02
            1.41636212655285e-02
            4.71083348186650e-03
            3.63789584227100e-02
            1.41636212655285e-02
            4.71083348186650e-03
            3.63789584227100e-02
            1.41636212655285e-02
            4.71083348186650e-03
            3.63789584227100e-02
            1.41636212655285e-02
            4.71083348186650e-03
            3.63789584227100e-02
            1.41636212655285e-02
            4.71083348186650e-03
            3.63789584227100e-02
            1.41636212655285e-02
            4.71083348186650e-03];
    case 12
        T = [   4.88217389773805e-01
            4.39724392294461e-01
            2.71210385012116e-01
            1.27576145541586e-01
            2.13173504532110e-02
            2.35652204523900e-02
            1.20551215411079e-01
            4.57579229975768e-01
            7.44847708916828e-01
            9.57365299093579e-01
            4.88217389773805e-01
            4.39724392294460e-01
            2.71210385012116e-01
            1.27576145541586e-01
            2.13173504532100e-02
            6.08943235779788e-01
            6.95836086787803e-01
            8.58014033544073e-01
            2.75713269685514e-01
            2.81325580989940e-01
            1.16251915907597e-01
            1.15343494534698e-01
            2.28383322222570e-02
            2.57340505483300e-02
            1.15343494534698e-01
            2.28383322222570e-02
            2.57340505483300e-02
            2.75713269685514e-01
            2.81325580989940e-01
            1.16251915907597e-01
            6.08943235779788e-01
            6.95836086787803e-01
            8.58014033544073e-01
            2.35652204523900e-02
            1.20551215411079e-01
            4.57579229975768e-01
            7.44847708916828e-01
            9.57365299093579e-01
            4.88217389773805e-01
            4.39724392294460e-01
            2.71210385012116e-01
            1.27576145541586e-01
            2.13173504532100e-02
            4.88217389773805e-01
            4.39724392294461e-01
            2.71210385012116e-01
            1.27576145541586e-01
            2.13173504532110e-02
            1.15343494534698e-01
            2.28383322222570e-02
            2.57340505483300e-02
            1.15343494534698e-01
            2.28383322222570e-02
            2.57340505483300e-02
            2.75713269685514e-01
            2.81325580989940e-01
            1.16251915907597e-01
            6.08943235779788e-01
            6.95836086787803e-01
            8.58014033544073e-01
            6.08943235779788e-01
            6.95836086787803e-01
            8.58014033544073e-01
            2.75713269685514e-01
            2.81325580989940e-01
            1.16251915907597e-01
            1.28655332202275e-02
            2.18462722690190e-02
            3.14291121089425e-02
            1.73980564653545e-02
            3.08313052577950e-03
            1.28655332202275e-02
            2.18462722690190e-02
            3.14291121089425e-02
            1.73980564653545e-02
            3.08313052577950e-03
            1.28655332202275e-02
            2.18462722690190e-02
            3.14291121089425e-02
            1.73980564653545e-02
            3.08313052577950e-03
            2.01857788831905e-02
            1.11783866011515e-02
            8.65811555432950e-03
            2.01857788831905e-02
            1.11783866011515e-02
            8.65811555432950e-03
            2.01857788831905e-02
            1.11783866011515e-02
            8.65811555432950e-03
            2.01857788831905e-02
            1.11783866011515e-02
            8.65811555432950e-03
            2.01857788831905e-02
            1.11783866011515e-02
            8.65811555432950e-03
            2.01857788831905e-02
            1.11783866011515e-02
            8.65811555432950e-03];
    case 13
        T = [   3.33333333333333e-01
            4.95048184939704e-01
            4.68716635109574e-01
            4.14521336801276e-01
            2.29399572042832e-01
            1.14424495196330e-01
            2.48113913634590e-02
            9.90363012059100e-03
            6.25667297808520e-02
            1.70957326397447e-01
            5.41200855914337e-01
            7.71151009607340e-01
            9.50377217273082e-01
            4.95048184939705e-01
            4.68716635109574e-01
            4.14521336801277e-01
            2.29399572042831e-01
            1.14424495196330e-01
            2.48113913634590e-02
            6.36351174561660e-01
            6.90169159986905e-01
            8.51409537834241e-01
            2.68794997058761e-01
            2.91730066734288e-01
            1.26357385491669e-01
            9.48538283795790e-02
            1.81007732788070e-02
            2.22330766740900e-02
            9.48538283795790e-02
            1.81007732788070e-02
            2.22330766740900e-02
            2.68794997058761e-01
            2.91730066734288e-01
            1.26357385491669e-01
            6.36351174561660e-01
            6.90169159986905e-01
            8.51409537834241e-01
            3.33333333333333e-01
            9.90363012059100e-03
            6.25667297808520e-02
            1.70957326397447e-01
            5.41200855914337e-01
            7.71151009607340e-01
            9.50377217273082e-01
            4.95048184939705e-01
            4.68716635109574e-01
            4.14521336801277e-01
            2.29399572042831e-01
            1.14424495196330e-01
            2.48113913634590e-02
            4.95048184939704e-01
            4.68716635109574e-01
            4.14521336801276e-01
            2.29399572042832e-01
            1.14424495196330e-01
            2.48113913634590e-02
            9.48538283795790e-02
            1.81007732788070e-02
            2.22330766740900e-02
            9.48538283795790e-02
            1.81007732788070e-02
            2.22330766740900e-02
            2.68794997058761e-01
            2.91730066734288e-01
            1.26357385491669e-01
            6.36351174561660e-01
            6.90169159986905e-01
            8.51409537834241e-01
            6.36351174561660e-01
            6.90169159986905e-01
            8.51409537834241e-01
            2.68794997058761e-01
            2.91730066734288e-01
            1.26357385491669e-01
            2.62604617004010e-02
            5.64007260466500e-03
            1.57117591812270e-02
            2.35362512520970e-02
            2.36817932681775e-02
            1.55837645228970e-02
            3.98788573253700e-03
            5.64007260466500e-03
            1.57117591812270e-02
            2.35362512520970e-02
            2.36817932681775e-02
            1.55837645228970e-02
            3.98788573253700e-03
            5.64007260466500e-03
            1.57117591812270e-02
            2.35362512520970e-02
            2.36817932681775e-02
            1.55837645228970e-02
            3.98788573253700e-03
            1.84242013643660e-02
            8.70073165191100e-03
            7.76089341952250e-03
            1.84242013643660e-02
            8.70073165191100e-03
            7.76089341952250e-03
            1.84242013643660e-02
            8.70073165191100e-03
            7.76089341952250e-03
            1.84242013643660e-02
            8.70073165191100e-03
            7.76089341952250e-03
            1.84242013643660e-02
            8.70073165191100e-03
            7.76089341952250e-03
            1.84242013643660e-02
            8.70073165191100e-03
            7.76089341952250e-03];
    case 14
        T = [  4.8896391036217808e-001
            4.1764471934045408e-001
            2.7347752830883808e-001
            1.7720553241254400e-001
            6.1799883090871952e-002
            1.9390961248700980e-002
            2.2072179275642996e-002
            1.6471056131909198e-001
            4.5304494338232296e-001
            6.4558893517491304e-001
            8.7640023381825504e-001
            9.6121807750259808e-001
            4.8896391036217896e-001
            4.1764471934045392e-001
            2.7347752830883896e-001
            1.7720553241254300e-001
            6.1799883090873000e-002
            1.9390961248701000e-002
            7.7060855477499600e-001
            5.7022229084668320e-001
            6.8698016780808800e-001
            8.7975717137017088e-001
            1.7226668782135598e-001
            3.3686145979634492e-001
            2.9837288213625800e-001
            1.1897449769695700e-001
            5.7124757403647992e-002
            9.2916249356971984e-002
            1.4646950055654000e-002
            1.2683309328720000e-003
            5.7124757403647992e-002
            9.2916249356971984e-002
            1.4646950055654000e-002
            1.2683309328720000e-003
            1.7226668782135598e-001
            3.3686145979634492e-001
            2.9837288213625800e-001
            1.1897449769695700e-001
            7.7060855477499600e-001
            5.7022229084668320e-001
            6.8698016780808800e-001
            8.7975717137017088e-001
            2.2072179275642996e-002
            1.6471056131909198e-001
            4.5304494338232296e-001
            6.4558893517491304e-001
            8.7640023381825504e-001
            9.6121807750259808e-001
            4.8896391036217896e-001
            4.1764471934045392e-001
            2.7347752830883896e-001
            1.7720553241254300e-001
            6.1799883090873000e-002
            1.9390961248701000e-002
            4.8896391036217808e-001
            4.1764471934045408e-001
            2.7347752830883808e-001
            1.7720553241254400e-001
            6.1799883090871952e-002
            1.9390961248700980e-002
            5.7124757403647992e-002
            9.2916249356971984e-002
            1.4646950055654000e-002
            1.2683309328720000e-003
            5.7124757403647992e-002
            9.2916249356971984e-002
            1.4646950055654000e-002
            1.2683309328720000e-003
            1.7226668782135598e-001
            3.3686145979634492e-001
            2.9837288213625800e-001
            1.1897449769695700e-001
            7.7060855477499600e-001
            5.7022229084668320e-001
            6.8698016780808800e-001
            8.7975717137017088e-001
            7.7060855477499600e-001
            5.7022229084668320e-001
            6.8698016780808800e-001
            8.7975717137017088e-001
            1.7226668782135598e-001
            3.3686145979634492e-001
            2.9837288213625800e-001
            1.1897449769695700e-001
            1.0941790684714502e-002
            1.6394176772062500e-002
            2.5887052253645996e-002
            2.1081294368496500e-002
            7.2168498348885008e-003
            2.4617018011999996e-003
            1.0941790684714502e-002
            1.6394176772062500e-002
            2.5887052253645996e-002
            2.1081294368496500e-002
            7.2168498348885008e-003
            2.4617018011999996e-003
            1.0941790684714502e-002
            1.6394176772062500e-002
            2.5887052253645996e-002
            2.1081294368496500e-002
            7.2168498348885008e-003
            2.4617018011999996e-003
            1.2332876606282000e-002
            1.9285755393530500e-002
            7.2181540567669984e-003
            2.5051144192504996e-003
            1.2332876606282000e-002
            1.9285755393530500e-002
            7.2181540567669984e-003
            2.5051144192504996e-003
            1.2332876606282000e-002
            1.9285755393530500e-002
            7.2181540567669984e-003
            2.5051144192504996e-003
            1.2332876606282000e-002
            1.9285755393530500e-002
            7.2181540567669984e-003
            2.5051144192504996e-003
            1.2332876606282000e-002
            1.9285755393530500e-002
            7.2181540567669984e-003
            2.5051144192504996e-003
            1.2332876606282000e-002
            1.9285755393530500e-002
            7.2181540567669984e-003
            2.5051144192504996e-003];
    case 17
        T = [  3.3333333333333332e-001
            4.9717054055677400e-001
            4.8217632262462408e-001
            4.5023996902078096e-001
            4.0026623937739688e-001
            2.5214126797095200e-001
            1.6204700465846200e-001
            7.5875882260746080e-002
            1.5654726967821994e-002
            5.6589188864519992e-003
            3.5647354750751004e-002
            9.9520061958437008e-002
            1.9946752124520604e-001
            4.9571746405809496e-001
            6.7590599068307696e-001
            8.4824823547850784e-001
            9.6869054606435600e-001
            4.9717054055677400e-001
            4.8217632262462496e-001
            4.5023996902078208e-001
            4.0026623937739704e-001
            2.5214126797095300e-001
            1.6204700465846100e-001
            7.5875882260746000e-002
            1.5654726967822000e-002
            6.5549320380942296e-001
            5.7233759053202008e-001
            6.2600119028622704e-001
            7.9642721497407104e-001
            7.5235100593773008e-001
            9.0462550409560800e-001
            3.3431986736365804e-001
            2.9222153779694400e-001
            3.1957488542319000e-001
            1.9070422419229200e-001
            1.8048321164874596e-001
            8.0711313679564016e-002
            1.0186928826919000e-002
            1.3544087167103600e-001
            5.4423924290583000e-002
            1.2868560833637000e-002
            6.7165782413524000e-002
            1.4663182224828000e-002
            1.0186928826919000e-002
            1.3544087167103600e-001
            5.4423924290583000e-002
            1.2868560833637000e-002
            6.7165782413524000e-002
            1.4663182224828000e-002
            3.3431986736365804e-001
            2.9222153779694400e-001
            3.1957488542319000e-001
            1.9070422419229200e-001
            1.8048321164874596e-001
            8.0711313679564016e-002
            6.5549320380942296e-001
            5.7233759053202008e-001
            6.2600119028622704e-001
            7.9642721497407104e-001
            7.5235100593773008e-001
            9.0462550409560800e-001
            3.3333333333333332e-001
            5.6589188864519992e-003
            3.5647354750751004e-002
            9.9520061958437008e-002
            1.9946752124520604e-001
            4.9571746405809496e-001
            6.7590599068307696e-001
            8.4824823547850784e-001
            9.6869054606435600e-001
            4.9717054055677400e-001
            4.8217632262462496e-001
            4.5023996902078208e-001
            4.0026623937739704e-001
            2.5214126797095300e-001
            1.6204700465846100e-001
            7.5875882260746000e-002
            1.5654726967822000e-002
            4.9717054055677400e-001
            4.8217632262462408e-001
            4.5023996902078096e-001
            4.0026623937739688e-001
            2.5214126797095200e-001
            1.6204700465846200e-001
            7.5875882260746080e-002
            1.5654726967821994e-002
            1.0186928826919000e-002
            1.3544087167103600e-001
            5.4423924290583000e-002
            1.2868560833637000e-002
            6.7165782413524000e-002
            1.4663182224828000e-002
            1.0186928826919000e-002
            1.3544087167103600e-001
            5.4423924290583000e-002
            1.2868560833637000e-002
            6.7165782413524000e-002
            1.4663182224828000e-002
            3.3431986736365804e-001
            2.9222153779694400e-001
            3.1957488542319000e-001
            1.9070422419229200e-001
            1.8048321164874596e-001
            8.0711313679564016e-002
            6.5549320380942296e-001
            5.7233759053202008e-001
            6.2600119028622704e-001
            7.9642721497407104e-001
            7.5235100593773008e-001
            9.0462550409560800e-001
            6.5549320380942296e-001
            5.7233759053202008e-001
            6.2600119028622704e-001
            7.9642721497407104e-001
            7.5235100593773008e-001
            9.0462550409560800e-001
            3.3431986736365804e-001
            2.9222153779694400e-001
            3.1957488542319000e-001
            1.9070422419229200e-001
            1.8048321164874596e-001
            8.0711313679564016e-002
            1.6718599645401496e-002
            2.5467077202534996e-003
            7.3354322638190000e-003
            1.2175439176836000e-002
            1.5553775434484498e-002
            1.5628555609310000e-002
            1.2407827169832500e-002
            7.0280365352784992e-003
            1.5973380868895002e-003
            2.5467077202534996e-003
            7.3354322638190000e-003
            1.2175439176836000e-002
            1.5553775434484498e-002
            1.5628555609310000e-002
            1.2407827169832500e-002
            7.0280365352784992e-003
            1.5973380868895002e-003
            2.5467077202534996e-003
            7.3354322638190000e-003
            1.2175439176836000e-002
            1.5553775434484498e-002
            1.5628555609310000e-002
            1.2407827169832500e-002
            7.0280365352784992e-003
            1.5973380868895002e-003
            4.0598276594965000e-003
            1.3402871141581498e-002
            9.2299966054110000e-003
            4.2384342671640000e-003
            9.1463983850125008e-003
            3.3328160020824996e-003
            4.0598276594965000e-003
            1.3402871141581498e-002
            9.2299966054110000e-003
            4.2384342671640000e-003
            9.1463983850125008e-003
            3.3328160020824996e-003
            4.0598276594965000e-003
            1.3402871141581498e-002
            9.2299966054110000e-003
            4.2384342671640000e-003
            9.1463983850125008e-003
            3.3328160020824996e-003
            4.0598276594965000e-003
            1.3402871141581498e-002
            9.2299966054110000e-003
            4.2384342671640000e-003
            9.1463983850125008e-003
            3.3328160020824996e-003
            4.0598276594965000e-003
            1.3402871141581498e-002
            9.2299966054110000e-003
            4.2384342671640000e-003
            9.1463983850125008e-003
            3.3328160020824996e-003
            4.0598276594965000e-003
            1.3402871141581498e-002
            9.2299966054110000e-003
            4.2384342671640000e-003
            9.1463983850125008e-003
            3.3328160020824996e-003];
    case 19
        T = [  3.3333333333333332e-001
            4.8960998707300704e-001
            4.5453689269789208e-001
            4.0141668064943096e-001
            2.5555165440309700e-001
            1.7707794215212902e-001
            1.1006105322795214e-001
            5.5528624251839048e-002
            1.2621863777228030e-002
            2.0780025853987000e-002
            9.0926214604214992e-002
            1.9716663870113800e-001
            4.8889669119380496e-001
            6.4584411569574096e-001
            7.7987789354409584e-001
            8.8894275149632096e-001
            9.7475627244554304e-001
            4.8960998707300600e-001
            4.5453689269789296e-001
            4.0141668064943104e-001
            2.5555165440309800e-001
            1.7707794215213002e-001
            1.1006105322795200e-001
            5.5528624251839992e-002
            1.2621863777228998e-002
            6.0063379479464496e-001
            5.5760326158878384e-001
            7.2098702581736496e-001
            5.9452706895587104e-001
            8.3933147368083808e-001
            7.0108797892617304e-001
            8.2293132406985696e-001
            9.2434425262078384e-001
            3.9575478735694296e-001
            3.0792998388043608e-001
            2.6456694840652000e-001
            3.5853935220595100e-001
            1.5780740596859500e-001
            7.5050596975911008e-002
            1.4242160111338298e-001
            6.5494628082938000e-002
            3.6114178484120000e-003
            1.3446675453078000e-001
            1.4446025776115000e-002
            4.6933578838178000e-002
            2.8611203505670000e-003
            2.2386142409791600e-001
            3.4647074816760000e-002
            1.0161119296278000e-002
            3.6114178484120000e-003
            1.3446675453078000e-001
            1.4446025776115000e-002
            4.6933578838178000e-002
            2.8611203505670000e-003
            2.2386142409791600e-001
            3.4647074816760000e-002
            1.0161119296278000e-002
            3.9575478735694296e-001
            3.0792998388043608e-001
            2.6456694840652000e-001
            3.5853935220595100e-001
            1.5780740596859500e-001
            7.5050596975911008e-002
            1.4242160111338298e-001
            6.5494628082938000e-002
            6.0063379479464496e-001
            5.5760326158878384e-001
            7.2098702581736496e-001
            5.9452706895587104e-001
            8.3933147368083808e-001
            7.0108797892617304e-001
            8.2293132406985696e-001
            9.2434425262078384e-001
            3.3333333333333332e-001
            2.0780025853987000e-002
            9.0926214604214992e-002
            1.9716663870113800e-001
            4.8889669119380496e-001
            6.4584411569574096e-001
            7.7987789354409584e-001
            8.8894275149632096e-001
            9.7475627244554304e-001
            4.8960998707300600e-001
            4.5453689269789296e-001
            4.0141668064943104e-001
            2.5555165440309800e-001
            1.7707794215213002e-001
            1.1006105322795200e-001
            5.5528624251839992e-002
            1.2621863777228998e-002
            4.8960998707300704e-001
            4.5453689269789208e-001
            4.0141668064943096e-001
            2.5555165440309700e-001
            1.7707794215212902e-001
            1.1006105322795214e-001
            5.5528624251839048e-002
            1.2621863777228030e-002
            3.6114178484120000e-003
            1.3446675453078000e-001
            1.4446025776115000e-002
            4.6933578838178000e-002
            2.8611203505670000e-003
            2.2386142409791600e-001
            3.4647074816760000e-002
            1.0161119296278000e-002
            3.6114178484120000e-003
            1.3446675453078000e-001
            1.4446025776115000e-002
            4.6933578838178000e-002
            2.8611203505670000e-003
            2.2386142409791600e-001
            3.4647074816760000e-002
            1.0161119296278000e-002
            3.9575478735694296e-001
            3.0792998388043608e-001
            2.6456694840652000e-001
            3.5853935220595100e-001
            1.5780740596859500e-001
            7.5050596975911008e-002
            1.4242160111338298e-001
            6.5494628082938000e-002
            6.0063379479464496e-001
            5.5760326158878384e-001
            7.2098702581736496e-001
            5.9452706895587104e-001
            8.3933147368083808e-001
            7.0108797892617304e-001
            8.2293132406985696e-001
            9.2434425262078384e-001
            6.0063379479464496e-001
            5.5760326158878384e-001
            7.2098702581736496e-001
            5.9452706895587104e-001
            8.3933147368083808e-001
            7.0108797892617304e-001
            8.2293132406985696e-001
            9.2434425262078384e-001
            3.9575478735694296e-001
            3.0792998388043608e-001
            2.6456694840652000e-001
            3.5853935220595100e-001
            1.5780740596859500e-001
            7.5050596975911008e-002
            1.4242160111338298e-001
            6.5494628082938000e-002
            1.6453165694459500e-002
            5.1653659456360000e-003
            1.1193623631508002e-002
            1.5133062934734000e-002
            1.5245483901099000e-002
            1.2079606370820500e-002
            8.0254017934004992e-003
            4.0422901308920000e-003
            1.0396810137425000e-003
            5.1653659456360000e-003
            1.1193623631508002e-002
            1.5133062934734000e-002
            1.5245483901099000e-002
            1.2079606370820500e-002
            8.0254017934004992e-003
            4.0422901308920000e-003
            1.0396810137425000e-003
            5.1653659456360000e-003
            1.1193623631508002e-002
            1.5133062934734000e-002
            1.5245483901099000e-002
            1.2079606370820500e-002
            8.0254017934004992e-003
            4.0422901308920000e-003
            1.0396810137425000e-003
            1.9424384524905000e-003
            1.2787080306011000e-002
            4.4404517866690008e-003
            8.0622733808655008e-003
            1.2459709087455000e-003
            9.1214200594755008e-003
            5.1292818680995000e-003
            1.8999644276510000e-003
            1.9424384524905000e-003
            1.2787080306011000e-002
            4.4404517866690008e-003
            8.0622733808655008e-003
            1.2459709087455000e-003
            9.1214200594755008e-003
            5.1292818680995000e-003
            1.8999644276510000e-003
            1.9424384524905000e-003
            1.2787080306011000e-002
            4.4404517866690008e-003
            8.0622733808655008e-003
            1.2459709087455000e-003
            9.1214200594755008e-003
            5.1292818680995000e-003
            1.8999644276510000e-003
            1.9424384524905000e-003
            1.2787080306011000e-002
            4.4404517866690008e-003
            8.0622733808655008e-003
            1.2459709087455000e-003
            9.1214200594755008e-003
            5.1292818680995000e-003
            1.8999644276510000e-003
            1.9424384524905000e-003
            1.2787080306011000e-002
            4.4404517866690008e-003
            8.0622733808655008e-003
            1.2459709087455000e-003
            9.1214200594755008e-003
            5.1292818680995000e-003
            1.8999644276510000e-003
            1.9424384524905000e-003
            1.2787080306011000e-002
            4.4404517866690008e-003
            8.0622733808655008e-003
            1.2459709087455000e-003
            9.1214200594755008e-003
            5.1292818680995000e-003
            1.8999644276510000e-003];
end
T = reshape(T, [], 3)';

x = T(1:2,:);
w = T(3,:);

end