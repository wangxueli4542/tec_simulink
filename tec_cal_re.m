function [Tc,Th,Qc,Qh] = tec_cal(T_air,T_out,I,n,R_cold,R_hot)
Sm=0.0523;
Rm=2.2;
Km=0.56;
T_out =T_out+273.15;
T_air =T_air+273.15;
% syms Th Tc 
% eq1=(T_out-Tc)/R_cold==Sm*Tc*I-0.5*I^2*Rm-Km*(Th-Tc);
% eq2=(Th-T_air)/R_hot==Sm*Th*I+0.5*I^2*Rm-Km*(Th-Tc);
% [Tc,Th]=vpasolve(eq1,eq2,Tc,Th);
Tc=(2*T_out+2*Km*R_cold*T_air*n+2*Km*R_hot*T_out*n+I^2*R_cold*Rm*n-2*I*R_hot*Sm*T_out*n+2*I^2*Km*R_hot*R_cold*Rm*n^2-I^3*R_cold*R_hot*Rm*Sm*n^2)/2/(Km*R_cold*n+Km*R_hot*n+I*R_cold*Sm*n-I*R_hot*Sm*n-I^2*R_hot*R_cold*Sm^2*n^2+1);
Th=(2*T_air+2*Km*R_cold*T_air*n+2*Km*R_hot*T_out*n+I^2*R_hot*Rm*n+2*I*R_cold*Sm*T_air*n+2*I^2*Km*R_hot*R_cold*Rm*n^2+I^3*R_cold*R_hot*Rm*Sm*n^2)/2/(Km*R_cold*n+Km*R_hot*n+I*R_cold*Sm*n-I*R_hot*Sm*n-I^2*R_hot*R_cold*Sm^2*n^2+1);
Tc=double(Tc);
Th=double(Th);
Qc=(Sm*Tc*I-0.5*I^2*Rm-Km*(Th-Tc))*n;
Qh=(Sm*Th*I+0.5*I^2*Rm-Km*(Th-Tc))*n;

