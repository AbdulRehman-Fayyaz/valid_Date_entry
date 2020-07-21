% Assign true or false based on valid date entry
function valid = valid_date_year_month(year,month,day)
% Check whether the input is scalar or not
if isscalar(year) && isscalar(month) && isscalar(day)
% Check input: year(other than leap year),month(1,3,5,7,8,10,12), and days(0 to 31)
if (isinteger(year/4) || ~isinteger(year/4)) && ((month == 1) || (month == 3) || (month == 5) || (month == 7) || (month == 8) || (month == 10) || (month == 12)) && (day>0 && day<=31)
    valid = true;
% Check input: year(other than leap year),month(4,6,9,11), and days(0 to 30)
elseif (isinteger(year/4) || ~isinteger(year/4)) && ((month == 4) || (month == 6) || (month == 9) || (month == 11)) && (day>0 && day<=30)
    valid = true;
% Check input: leap year,month(2), and days(0 to 29)
elseif mod(year, 400) == 0 && month == 2 && (day>0 && day<=29)
    valid = true;
% Check input: leap year,month(2), and days(0 to 29)
elseif mod(year, 4) == 0 && mod(year, 100) ~= 0 && month == 2 && (day>0 && day<=29)
    valid = true;
% Check input: NOT a leap year,month(2), and days(0 to 28)
elseif ~(mod(year, 400) == 0) && month == 2 && (day>0 && day<=28)
    valid = true;
% Check input: NOT a leap year,month(2), and days(0 to 28)
elseif ~(mod(year, 4) == 0 && mod(year, 100) ~= 0) && month == 2 && (day>0 && day<=28)
    valid = true;
else
    valid = false;
end; return
else
    valid = false;
end 
