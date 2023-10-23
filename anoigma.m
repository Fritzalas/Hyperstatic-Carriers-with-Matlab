    function[M,Q,x]=anoigma(Fa,qa,g,La,Ma)
    x=linspace(0,La,100);
    Q=Fa-qa.*x-g.*x;
    M=Ma+Fa*x-(qa+g).*(x.^2)./2;
    end
