function [pref,g,w,EI,L]=diabasmaarxeioy()

while true
    pref = input('Enter file prefix: ', 's');
    fn = [pref '.dat'];
    fr = fopen(fn, 'r');
        if fr > 0
        break
        end
    fprintf('Can not find/open %s. Please try again.\n', fn);
end
check_blank(fn);
iline=0;
[g, iline] = getlabelreals(fn, fr, iline, 'DEAD LOAD:', 1, 0);
[w, iline] = getlabelreals(fn, fr, iline, 'USEFUL LOAD:', 1, 0);
[EI,iline] = getlabelreals(fn, fr, iline, 'STIFFNESS:', 1, 1);
[L, iline] = getlabelreals(fn, fr, iline, 'SPAN:', 1, 1);
if g==0 && w==0
  error("We don't have any load (no forces) to the .dat that you gave!Try again with a different .dat ");
endif
end
