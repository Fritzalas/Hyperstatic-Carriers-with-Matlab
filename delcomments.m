%Diagrafei sxolia arxeiwn
function dline = delcomments(dline)
k = find(dline == '#', 1); %Find only the first '#'
    if ~isempty(k)
        if k == 1
        dline = '';
        else
        dline = dline(1:k-1); %Keep only the string that is before '#'
        end
    end
end