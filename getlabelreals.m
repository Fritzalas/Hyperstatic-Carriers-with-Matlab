function [v, iline] = getlabelreals(fn, fr, iline, lab, n, icod)
while true
    if feof(fr)
    error('Unexpected end of file %s after line %d', fn, iline);
    end
    dline = strtrim(delcomments(fgetl(fr)));
    iline = iline + 1;
        if ~isempty(dline)
        break;
        end
end
     nlab = length(lab);
     if length(dline) < nlab || ~strcmp(lab, dline(1:nlab))
     error('Error at line %d of file %s: "%s" was expected', iline, fn, lab);
     end
     dline = dline(nlab+1:end);
    [v, nr] = sscanf(dline, '%f');
    if nr < n
        error('Error at line %d of file %s: "%d" real numbers were expected!Not blanck or string!',iline, fn, n);
    end
     if icod == 1 && any(v<=0)
         error('Error at line %d of file %s: "%d" positive real numbers were expected', fn, iline, n);
     end
end
