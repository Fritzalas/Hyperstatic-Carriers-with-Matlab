function []=omadiki2h(g,w,EI,L,proth)
%qaristerh
q1=0.35.*g+1.5.*w;
q2=0;
q3=0;
[R1ola,R2ola,R3ola,R4ola]=antidraseis(q1,q2,q3,L,g);
[M1,Q1,x1]=anoigma(R1ola,q1,g,L,0);
[M2,Q2,x2]=anoigma(R2ola+Q1(100),q2,g,L,M1(end));
[M3,Q3,x3]=anoigma(R3ola+Q2(100),q3,g,L,M2(end));
x=[x1,x2+L,x3+L+L];
Q11=[Q1,Q2,Q3];
M=[M1,M2,M3];
figure(1)
subplot(3,1,1)
plot(x,Q11)
title('ΔΙΑΓΡΑΜΜΑ ΤΕΜΝΟΥΣΩΝ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('TΙΜΕΣ ΤΕΜΝΟΥΣΑΣ')
legend('y=Q(x)')
grid on
subplot(3,1,2)
plot(x,M)
title('ΔΙΑΓΡΑΜΜΑ ΚΑΜΠΤΙΚΗΣ ΡΟΠΗΣ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('TΙΜΕΣ ΚΑΜΠΤΙΚΗΣ ΡΟΠΗΣ')
legend('y=M(x)')
grid on
[ELT,x]=elastiki_1(Q1,Q2,M1,M2,q1,q2,q3,g,R1ola,R2ola,R3ola,EI,L);
k1=ELT;
k=ELT;
subplot(3,1,3)
plot(x,ELT)
title('ΕΛΑΣΤΙΚΗ ΓΡΑΜΜΗ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('ΠΑΡΑΜΟΡΦΩΣΗ')
legend('y=EIy(x)')
grid on
counter=1;
for i=length(k):-1:1
  ELT(counter)=k(i);
  counter=counter+1;
endfor
k=ELT;
k3=k;
%%%
%q mesh
q1=0;
q2=0.35.*g+1.5.*w;
q3=0;
[R1ola,R2ola,R3ola]=antidraseis(q1,q2,q3,L,g);
[M1,Q1,x1]=anoigma(R1ola,q1,g,L,0);
[M2,Q2,x2]=anoigma(R2ola+Q1(100),q2,g,L,M1(100));
[M3,Q3,x3]=anoigma(R3ola+Q2(100),q3,g,L,M2(100));
x=[x1,x2+L,x3+L+L];
Q12=[Q1,Q2,Q3];
M=[M1,M2,M3];
%%%
figure(2)
grid on;
subplot(3,1,1)
plot(x,Q12)
title('ΔΙΑΓΡΑΜΜΑ ΤΕΜΝΟΥΣΩΝ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('TΙΜΕΣ ΤΕΜΝΟΥΣΑΣ')
legend('y=Q(x)')
grid on
subplot(3,1,2)
plot(x,M)
title('ΔΙΑΓΡΑΜΜΑ ΚΑΜΠΤΙΚΗΣ ΡΟΠΗΣ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('TΙΜΕΣ ΚΑΜΠΤΙΚΗΣ ΡΟΠΗΣ')
legend('y=M(x)')
grid on
[ELT,x]=elastiki_1(Q1,Q2,M1,M2,q1,q2,q3,g,R1ola,R2ola,R3ola,EI,L);
subplot(3,1,3)
plot(x,ELT)
title('ΕΛΑΣΤΙΚΗ ΓΡΑΜΜΗ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('ΠΑΡΑΜΟΡΦΩΣΗ')
legend('y=EIy(x)')
grid on
k2=ELT;
%%%%%
%q dexia
q3=0.35.*g+1.5.*w;
q2=0;
q1=0;
[R1ola,R2ola,R3ola]=antidraseis(q1,q2,q3,L,g);
%mqn
[M1,Q1,x1]=anoigma(R1ola,q1,g,L,0);
[M2,Q2,x2]=anoigma(R2ola+Q1(100),q2,g,L,M1(100));
[M3,Q3,x3]=anoigma(R3ola+Q2(100),q3,g,L,M2(100));
x=[x1,x2+L,x3+L+L];
Q13=[Q1,Q2,Q3];
M=[M1,M2,M3];
figure(3)
grid on;
subplot(3,1,1)
plot(x,Q13)
title('ΔΙΑΓΡΑΜΜΑ ΤΕΜΝΟΥΣΩΝ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('TΙΜΕΣ ΤΕΜΝΟΥΣΑΣ')
legend('y=Q(x)')
grid on
subplot(3,1,2)
plot(x,M)
title('ΔΙΑΓΡΑΜΜΑ ΚΑΜΠΤΙΚΗΣ ΡΟΠΗΣ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('TΙΜΕΣ ΚΑΜΠΤΙΚΗΣ ΡΟΠΗΣ')
legend('y=M(x)')
grid on
subplot(3,1,3)
plot(x,k)
title('ΕΛΑΣΤΙΚΗ ΓΡΑΜΜΗ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('ΠΑΡΑΜΟΡΦΩΣΗ')
legend('y=EIy(x)')
grid on
Qper=[Q11;Q12;Q13];
disp("Exoume oti ta megista thetika einai:")
Emax=max(k1)
Emax=max(k2)
Emax=max(k3)
disp("Exoume oti ta megista arnitika einai:")
Emin=min(k1)
Emin=min(k2)
Emin=min(k3)
end


