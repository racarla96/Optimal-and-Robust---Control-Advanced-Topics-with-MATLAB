P = sdpvar(2,2);

A = [-2 0; 0 -5]

LMI1 = P;
LMI2 = A'*P+P*A;

LMI_sys = [LMI1>=0, LMI2<=-eye(2)];

solvesdp(LMI_sys)