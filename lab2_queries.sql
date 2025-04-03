-- 1. INNER JOIN: Get a list of movies with their directors and release dates
SELECT m.Title, m.ReleaseDate, d.FirstName AS DirectorFirstName, d.LastName AS DirectorLastName
FROM Movies m
INNER JOIN Directors d ON m.DirectorID = d.DirectorID;

-- 2. LEFT JOIN: List all movies and their cast, including movies with no cast members
SELECT m.Title, c.FirstName AS CastFirstName, c.LastName AS CastLastName
FROM Movies m
LEFT JOIN MovieCast mc ON m.MovieID = mc.MovieID
LEFT JOIN Cast c ON mc.CastID = c.CastID;

-- 3. UPDATE: Update the genre of a specific movie (Titanic) to 'Historical Drama'
UPDATE Movies
SET Genre = 'Historical Drama'
WHERE Title = 'Titanic';

-- 4. DELETE: Delete a specific cast member (Emma Stone) from the cast list of Titanic
DELETE FROM MovieCast
WHERE MovieID = (SELECT MovieID FROM Movies WHERE Title = 'Titanic')
  AND CastID = (SELECT CastID FROM Cast WHERE FirstName = 'Emma' AND LastName = 'Stone');

-- 5. Aggregation (GROUP BY, HAVING): Find the number of movies directed by each director, 
-- but only include directors who have directed more than one movie
SELECT d.FirstName, d.LastName, COUNT(m.MovieID) AS MoviesDirected
FROM Directors d
JOIN Movies m ON d.DirectorID = m.DirectorID
GROUP BY d.DirectorID
HAVING COUNT(m.MovieID) > 1;

-- 6. Subquery: Get the titles of movies that have a higher total budget than the average budget
SELECT m.Title
FROM Movies m
JOIN Budgets b ON m.BudgetID = b.BudgetID
WHERE b.TotalBudget > (SELECT AVG(TotalBudget) FROM Budgets);
