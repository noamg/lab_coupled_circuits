VB2VA_rat = 10.^((VB_dB-VA_dB)/10);
d_err = ones(length(dist_cm),1)*0.3;
V_err = ones(length(VA_dB),1)*0.05;
VB2VA_R_err = 10.^((VB_dB-VA_dB+2*V_err)/10)-10.^((VB_dB-VA_dB-2*V_err)/10)+min(VB2VA_rat)/2;

figure
hold on
errorbar(dist_cm,VB2VA_rat,VB2VA_R_err,'.')
herrorbar(dist_cm,VB2VA_rat,d_err,'.')
