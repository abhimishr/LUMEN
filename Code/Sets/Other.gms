SET   type  "GAMS variable attribute used for the output" 
                / level, marginal, upper, lower /
;

SET   statistical_id  "Which type of statistical indicator" 
                /mean, median, min, max/
;



*#### Time sets
sets 
        t_all
                / 1980 * 2100 /
        time_annual(t_all)
                / 2015 * 2020 /
        t(time_annual)
                / 2015 * 2016 /
;

set  ct(t) Current time period;
set pt(t) Previous time period;

alias(t,t2);


sets
    hh  Household type
        / urban, rural /