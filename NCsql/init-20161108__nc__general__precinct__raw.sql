-- This file will create a user, then a table, grant access to that table to the user,
-- then load the data from the CSV
-- Update with the path to your data and go
use NCVoters;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
create table 2016GeneralbyPrecinct (`updated_at` varchar(32), `id`  varchar(32),`start_date`  varchar(32) ,`end_date`  varchar(32) ,`election_type`  varchar(32) ,`result_type`  varchar(32) ,` special`  varchar(32) ,`office`  varchar(32) ,`district`  varchar(32) ,`name_raw`  varchar(32) ,`last_name`  varchar(32) ,`first_name`  varchar(32) ,`suffix`  varchar(32) ,`middle_name`  varchar(32) ,`party`  varchar(32) ,`parent_jurisdiction`  varchar(32) ,`jurisdiction`  varchar(32) ,`division`  varchar(32) ,`votes`  varchar(32) ,`votes_type`  varchar(32) ,`total_votes`  varchar(32) ,`winner`  varchar(32) ,`write_in`  varchar(32) ,`year`  varchar(32) ,`absentee_by_mail`  varchar(32) ,`election_day`  varchar(32) ,`one_stop`  varchar(32) ,`provisional`  varchar(32));
GRANT ALL PRIVILEGES ON NCVoters.2016GeneralbyPrecinct TO 'user'@'localhost';
LOAD DATA local INFILE '[your repo path]/openelections-results-nc/raw/20161108__nc__general__precinct__raw.csv' INTO TABLE 2016GeneralbyPrecinct FIELDS TERMINATED BY ','   IGNORE 1 LINES ;
select * from 2016GeneralbyPrecinct limit 20;
