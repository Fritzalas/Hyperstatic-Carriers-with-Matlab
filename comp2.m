function F=comp2(Fa,qa,g,La,Lb,Ma,x,icounter)
N=11; %Tha paroume 200 diastimata anamesa stis olokliroseis mas
%Prepei na doume an ta N-1 isomiki ypodiastimata einai artia allio den prepei na treksei o kodikas
if mod(N-1,2)~=0
  disp('Edoses mi artio arithmo') %H entoli disp mas ektyponei ta anagkaia minimata oste na katalavei o xristis ti lathos N edose
  disp('Error')
  error('Ksanadose allon arithmo') %Termatizei h error to function afou meta den exei nohma na psaksei methodo simpson se perrito arithmo ypodiastimaton
endif
C=linspace(Lb,x,N); %Edo pernoume tin diamerisi mas
y=comp(Fa,qa,g,La,Ma,C(1),icounter)+comp(Fa,qa,g,La,Ma,C(N),icounter); %Me auto dinoume arxiki timi sto y prin mpei sto for loop pou tha exoume
%Proto athroisma:
a=(N-1)/2; %Ano orio athroismatos(den vazoume -1 logo tou systimatos anaforas pou exoume parei)
for j=1:1:a
  y=y+4*comp(Fa,qa,g,La,Ma,C(2*j),icounter); %Vazoyme epi tessera sta artia kai epi dyo sta perrita dioti allazei to systima anaoforas
endfor
%Deutero athroisma
b=(N-1)/2; %Ano orio athroismatos
%Ksekinaei apo to 2 dioti tin thesi 1 tin exoume etoimi idi
for j=2:1:b
  y=y+2*comp(Fa,qa,g,La,Ma,C((2*j)-1),icounter);
endfor
y=(((C(N))-C(1))*y)/(3*(N-1)); %Vazoume N-1 dioti exoume N-1 isomiki diastimata
F=y;
end

