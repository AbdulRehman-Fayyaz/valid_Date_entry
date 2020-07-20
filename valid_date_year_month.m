function valid = valid_date_year_month(year,month,day)
if isscalar(year) && isscalar(month) && isscalar(day)

if (isinteger(year/4) || ~isinteger(year/4)) && ((month == 1) || (month == 3) || (month == 5) || (month == 7) || (month == 8) || (month == 10) || (month == 12)) && (day>0 && day<=31)
    valid = true;
elseif (isinteger(year/4) || ~isinteger(year/4)) && ((month == 4) || (month == 6) || (month == 9) || (month == 11)) && (day>0 && day<=30)
    valid = true;
elseif mod(year, 400) == 0 && month == 2 && (day>0 && day<=29)
    valid = true;
elseif mod(year, 4) == 0 && mod(year, 100) ~= 0 && month == 2 && (day>0 && day<=29)
    valid = true;
elseif ~(mod(year, 400) == 0) && month == 2 && (day>0 && day<=28)
    valid = true;
elseif ~(mod(year, 4) == 0 && mod(year, 100) ~= 0) && month == 2 && (day>0 && day<=28)
    valid = true;
else
    valid = false;
end; return
else
    valid = false;
end 