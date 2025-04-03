-- 1. List all movies with their directors and release dates
SELECT m.Title, m.ReleaseDate, d.FirstName AS DirectorFirstName, d.LastName AS DirectorLastName
FROM Movies m
JOIN Directors d ON m.DirectorID = d.DirectorID;

-- 2. Get all cast members for a specific movie (Inception)
SELECT c.FirstName, c.LastName, c.Role
FROM Cast c
JOIN MovieCast mc ON c.CastID = mc.CastID
JOIN Movies m ON mc.MovieID = m.MovieID
WHERE m.Title = 'Inception';

-- 3. Get the total budget of a movie along with its production and marketing budget
SELECT m.Title, b.TotalBudget, b.ProductionBudget, b.MarketingBudget
FROM Movies m
JOIN Budgets b ON m.BudgetID = b.BudgetID;

-- 4. List all directors and the number of movies they directed
SELECT d.FirstName, d.LastName, COUNT(m.MovieID) AS MoviesDirected
FROM Directors d
JOIN Movies m ON d.DirectorID = m.DirectorID
GROUP BY d.DirectorID;

-- 5. Get the total production and marketing budgets for all movies
SELECT SUM(b.ProductionBudget) AS TotalProductionBudget, SUM(b.MarketingBudget) AS TotalMarketingBudget
FROM Movies m
JOIN Budgets b ON m.BudgetID = b.BudgetID;

-- 6. Get the actors that appeared in a specific movie (Titanic)
SELECT c.FirstName, c.LastName
FROM Cast c
JOIN MovieCast mc ON c.CastID = mc.CastID
JOIN Movies m ON mc.MovieID = m.MovieID
WHERE m.Title = 'Titanic';
