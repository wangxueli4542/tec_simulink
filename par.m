
                              

K_guiti = 2.4;% 柜体总漏热系数
rho_air= 1.225% 空气密度
v_air=70% 柜内空气体积L
cp_air = 1006.43% 空气比热容
c_air = rho_air*v_air*cp_air*1e-3;% 柜内空气总热容
cp_foam = 1546.6; % 发泡层比热容
v_foam = 66%发泡层体积L
rho_foam=100% 发泡层密度
c_foam = rho_foam*v_foam*cp_foam*1e-3;%发泡层总热容
rho_al= 2719 % 铝密度
cp_al = 871 % 铝的比热容
v_al_in = 0.68% 柜内铝型材散热器体积L
v_al_out=1.6%柜外铝型材散热器体积L
c_al_in=rho_al*v_al_in*cp_al*1e-3;% 柜内铝型材散热器总热容
c_al_out=rho_al*v_al_out*cp_al*1e-3;% 柜外铝型材散热器总热容
K=4*K_guiti % 柜内空气与发泡层和柜外空气与发泡层的热导，假设为通过发泡层导热的的一半
K_al_in =40;% 柜内空气与柜内散热器的热导
k_al_out =40%柜外空气与柜内散热器的热导

