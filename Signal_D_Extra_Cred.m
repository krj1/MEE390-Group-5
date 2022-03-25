VPP = 7.8;
VP = VPP / 2;
VN = -VPP / 2;

duty = [ .2, .25, .5, .75, .8 ];

mean = (VP * duty) + (VN * (1 - duty));

F_bar = 2.75;

ofset = F_bar - mean;

duty = duty' * 100;
ofset = ofset';

T = table(categorical({'Run 1';'Run 2';'Run 3';'Run 4';'Run 5'}), duty, ofset)





