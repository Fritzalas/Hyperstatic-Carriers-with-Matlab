    function[x,Q,M]=anoigma_test(R1,R2,R3,R4,g,q,L,icounter) %Auto einai to test gia na doume tis sostes grafikes parastaseis pos einai kai meta tha ginei to epomeno anoigma xoris if opos zitaei i askisi
    st=2*L;
    en=3*L;
    x1=linspace(0,L,100); %Kanoume paremvoli 100 simeia mesa sto diastima [0,L]
    x2=linspace(L,st,100);
    x3=linspace(st,en,100);
    x=[x1 x2 x3];
    if icounter==1
      q1=R1-(q+g)*x1;
      q2=R1+R2-q*L-g*x2;
      q3=R1+R2+R3-q*L-g*x3;
      m1=R1*x1-(q+g)*(0.5*x1.^2);
      m2=R1*x2+R2*(x2-L)-q*L*(x2-0.5*L)-g*(0.5*x2.^2);
      m3=R1*x3+R2*(x3-L)+R3*(x3-2*L)-q*L*(x3-0.5*L)-g*(0.5*x3.^2);
      Q=[q1 q2 q3];
      M=[m1 m2 m3];
    endif
    if icounter==2
      q1=R1-g*x1;
      q2=R1+R2-q*(x2-L)-g*x2;
      q3=R1+R2+R3-q*L-g*x3;
      m1=R1*x1-g*(0.5*x1.^2);
      m2=R1*x2+R2*(x2-L)-q*0.5*(x2-L).*(x2-L)-g*(0.5*x2.^2);
      m3=R1*x3+R2*(x3-L)+R3*(x3-2*L)-q*L*(x3-1.5*L)-g*(0.5*x3.^2);
      Q=[q1 q2 q3];
      M=[m1 m2 m3];
    endif
    if icounter==3
      q1=R1-g*x1;
      q2=R1+R2-g*x2;
      q3=R1+R2+R3-q*(x3-2*L)-g*x3;
      m1=R1*x1-g*(0.5*x1.^2);
      m2=R1*x2+R2*(x2-L)-g*(0.5*x2.^2);
      m3=R1*x3+R2*(x3-L)+R3*(x3-2*L)-(q*0.5*(x3-2*L).*(x3-2*L))-g*(0.5*x3.^2);
      Q=[q1 q2 q3];
      M=[m1 m2 m3];
    endif
    end
