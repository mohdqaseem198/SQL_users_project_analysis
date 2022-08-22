CREATE DATABASE PRACTICE;
USE PRACTICE;
-- CREATING TABLE
CREATE TABLE USERS (user_name TEXT, rank_number INTEGER);
INSERT INTO USERS VALUES ("QASEEM" , 2);
INSERT INTO USERS VALUES ("SUFYAN" , 4);

SELECT * FROM USERS;

-- WHERE
SELECT * FROM users_basic_details WHERE gender = "MALE";
SELECT * FROM users_basic_details WHERE gender = "MALE" AND current_city = "Mumbai";

-- ORDER BY
SELECT * FROM users_basic_details WHERE gender = "MALE" ORDER BY highest_qualification;

-- SUM MIN MAX WHERE
SELECT MIN(unit_duration_in_mins) FROM learning_resource_details;
SELECT * FROM learning_resource_details WHERE unit_duration_in_mins <= 90;
SELECT COUNT(*) FROM learning_resource_details WHERE unit_duration_in_mins <= 50;

-- WHERE IN
SELECT day_wise_user_activity.unit_id, day_wise_user_activity.user_id FROM day_wise_user_activity 
WHERE user_id IN ("user_30", "user_40");

-- LIKE WHERE
SELECT * FROM learning_resource_details WHERE program_title = "Competitive Programming";
SELECT * FROM learning_resource_details WHERE program_title LIKE "%intro%";

-- GROUP BY HAVING
SELECT * FROM day_wise_user_activity GROUP BY unit_type HAVING day_completion_percentage = 100;

--  JOIN STARTS FROM HERE....
SELECT * FROM users_basic_details JOIN day_wise_user_activity 
ON users_basic_details.user_id = day_wise_user_activity.user_id WHERE highest_qualification = "M.Tech";

SELECT day_wise_user_activity.user_id, learning_resource_details.program_title FROM day_wise_user_activity JOIN 
learning_resource_details ON day_wise_user_activity.unit_id = learning_resource_details.unit_id;

-- UPDATING TABLE
UPDATE USERS SET USERS.rank_number = 1 WHERE USERS.user_name = "QASEEM";

-- ALTER TABLE
ALTER TABLE USERS ADD behavior TEXT DEFAULT "RUDE";
SELECT * FROM USERS;

-- DELETE FROM TABLE
DELETE FROM USERS WHERE USERS.rank_number = 2;

-- DROPPING TABLE
DROP TABLE USERS;