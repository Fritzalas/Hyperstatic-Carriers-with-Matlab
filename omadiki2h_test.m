function []=omadiki2h_test(g,w,EI,L,proth) %Edo trexei o dokimastikos kodikas prin ginoun oles oi synthikes tis askisis
%qaristerh
q1=0.35*g+1.5*w;
q2=0;
q3=0;
icounter=1;
[R1ola,R2ola,R3ola,R4ola]=antidraseis(q1,q2,q3,L,g);
[x,Q,M]=anoigma_test(R1ola,R2ola,R3ola,R4ola,g,q1,L,icounter);
figure(1)
subplot(3,1,1)
plot(x,Q)
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
[Elg1,x]=elastiki(q1,q2,q3,g,EI,L,R1ola,R2ola,R3ola);
subplot(3,1,3)
plot(x,Elg1)
title('ΕΛΑΣΤΙΚΗ ΓΡΑΜΜΗ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('ΠΑΡΑΜΟΡΦΩΣΗ')
legend('y=EIy(x)')
grid on
%%%
%q mesh
q1=0;
q2=0.35*g+1.5*w;
q3=0;
icounter=icounter+1;
[R1ola,R2ola,R3ola]=antidraseis(q1,q2,q3,L,g);
[x,Q,M]=anoigma_test(R1ola,R2ola,R3ola,R4ola,g,q2,L,icounter);
%%%
figure(2)
grid on;
subplot(3,1,1)
plot(x,Q)
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
[Elg1,x]=elastiki(q1,q2,q3,g,EI,L,R1ola,R2ola,R3ola);
subplot(3,1,3)
plot(x,Elg1)
title('ΕΛΑΣΤΙΚΗ ΓΡΑΜΜΗ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('ΠΑΡΑΜΟΡΦΩΣΗ')
legend('y=EIy(x)')
grid on
%%%%%
%q dexia
q3=0.35*g+1.5*w;
q2=0;
q1=0;
icounter=icounter+1;
[R1ola,R2ola,R3ola]=antidraseis(q1,q2,q3,L,g);
%mqn
[x,Q,M]=anoigma_test(R1ola,R2ola,R3ola,R4ola,g,q3,L,icounter);
figure(3)
grid on;
subplot(3,1,1)
plot(x,Q)
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
[Elg1,x]=elastiki(q1,q2,q3,g,EI,L,R1ola,R2ola,R3ola);
subplot(3,1,3)
plot(x,Elg1)
title('ΕΛΑΣΤΙΚΗ ΓΡΑΜΜΗ')
xlabel('ΜΗΚΟΣ ΔΟΚΟΥ 0<x<3L')
ylabel('ΠΑΡΑΜΟΡΦΩΣΗ')
legend('y=EIy(x)')
grid on
Qper=[Q11;Q12;Q13]
qmin=min(Qper)
qmax=max(Qper)
end


