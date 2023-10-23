function [R1ola,R2ola,R3ola,R4ola]=antidraseis(q1,q2,q3,L,g)
%garist
R1a=0.433*g*L;
R2a=0.650*g*L;
A=[1,1;1,0];
B=[g*L-R1a-R2a;g*2.5*L-2*R2a-3*R1a];
G=(A\B)';
R3a=G(1);
%disp(R3a) (exei mpei san sxolio gia na ginei elegxos an pigan ola sosta)
R4a=G(2);
%disp(R4a) (exei mpei san sxolio gia na ginei elegxos an pigan ola sosta)
%GMesh
R2m=0.55*g*L;
R3m=0.55*L*g;
C=[1,1;3,0];
V=[-R2m-R3m+g*L;-R3m-2*R2m+g*(3*L/2)];
N=(C\V)';
R1m=N(1);
R4m=N(2);
%gdex
R1d=R4a;
R2d=R3a;
R3d=R2a;
R4d=R1a;
%epal
R1g=R1a+R1m+R1d;
R2g=R2a+R2m+R2d;
R3g=R3a+R3m+R3d;
R4g=R4a+R4m+R4d;
%q1q2q3
R1ola=R1g +0.433*L*q1-0.05*L*q2+0.017*L*q3;
R2ola=R2g +0.65*L*q1+0.55*L*q2-0.10*L*q3;
R3ola=R3g -0.1*L*q1+0.55*L*q2+0.65*L*q3;
R4ola=R4g +0.017*L*q1-0.05*L*q2+0.433*L*q3;
end
