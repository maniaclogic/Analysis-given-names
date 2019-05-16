-- overall occurence by gender
SELECT SUM('Occurence'),'Gender'
FROM nametable
GROUP BY 2;

-- frequent names
SELECT 'names',
HAVING SUM('Occurence') > 1500000
FROM nametable;

-- names per gender
SELECT 'names',
WHERE 'Gender' = 'F'
FROM nametable;

SELECT 'names',
WHERE 'Gender' = 'M'
FROM nametable;

-- birthrate
SELECT SUM('Occurence'), 'year'
FROM nametable
GROUP BY 4;

-- birthrate per gender
SELECT SUM('Occurence'), 'year'
WHERE 'Gender' = 'F'
FROM nametable
GROUP BY 4;

SELECT SUM('Occurence'), 'year'
WHERE 'Gender' = 'M'
FROM nametable
GROUP BY 4;

--  Name diversity / number of individual names
SELECT COUNT('names'), 'year'
FROM nametable
GROUP BY 4;

SELECT 'names'
