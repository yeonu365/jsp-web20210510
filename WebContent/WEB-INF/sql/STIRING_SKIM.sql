SET sqp_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SELECT *FROM MyTable5;
-- 'abc  ', 'abc'

SET sql_mode = '';
SELECT * FROM MyTable5;
