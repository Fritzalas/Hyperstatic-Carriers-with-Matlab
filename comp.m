function M=comp(Fa,qa,g,La,Ma,x,icounter)
    x=x-(icounter*La);
    M=Ma+Fa*x-(qa+g).*(x.^2)./2;
    end
