-- Gender vs Average Scores
SELECT 
	gender,
    round(avg(math_score), 1) as avg_math_score,
    round(avg(reading_score), 1) as avg_reading_score,
    round(avg(writing_score), 1) as avg_writing_score
FROM StudentsPerformance
GROUP BY gender

-- Ethnicity Groups vs Average Scores
SELECT 
	race_ethnicity,
    round(avg(math_score), 1) as avg_math_score,
    round(avg(reading_score), 1) as avg_reading_score,
    round(avg(writing_score), 1) as avg_writing_score
FROM StudentsPerformance
GROUP BY race_ethnicity

-- Parental Education vs Average Scores
SELECT 
	parental_level_o,
    round(avg(math_score), 1) as avg_math_score,
    round(avg(reading_score), 1) as avg_reading_score,
    round(avg(writing_score), 1) as avg_writing_score
FROM StudentsPerformance
GROUP BY parental_level_o

-- Lunch Type vs Average Scores
SELECT 
	lunch,
    round(avg(math_score), 1) as avg_math_score,
    round(avg(reading_score), 1) as avg_reading_score,
    round(avg(writing_score), 1) as avg_writing_score
FROM StudentsPerformance
GROUP BY lunch

-- Test Preparation vs Average Scores
SELECT 
	test_preparation,
    round(avg(math_score), 1) as avg_math_score,
    round(avg(reading_score), 1) as avg_reading_score,
    round(avg(writing_score), 1) as avg_writing_score
FROM StudentsPerformance
GROUP BY test_preparation

-- Test Preparation + Lunch Type vs Average Scores
SELECT 
	test_preparation,
    lunch,
    round(avg(math_score), 1) as avg_math_score,
    round(avg(reading_score), 1) as avg_reading_score,
    round(avg(writing_score), 1) as avg_writing_score
FROM StudentsPerformance
GROUP BY test_preparation, lunch
