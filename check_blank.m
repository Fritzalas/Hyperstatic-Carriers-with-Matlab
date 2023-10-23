function []=check_blank(fn)
file_info = dir(fn);
if file_info.bytes < 20
  error("We have a blank .dat!Try again with a different .dat");
endif
end

