-- This file will refresh the data from CSV by clearing the table and re-loading it
-- update with the path to the data
use NCVoters;
truncate table 2016GeneralbyPrecinct;
LOAD DATA local INFILE '[your repo path here]/openelections-results-nc/raw/20161108__nc__general__precinct__raw.csv' INTO TABLE 2016GeneralbyPrecinct FIELDS TERMINATED BY ','   IGNORE 1 LINES ;
select * from 2016GeneralbyPrecinct limit 20;
