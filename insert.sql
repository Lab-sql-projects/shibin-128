-- Insert Directors
INSERT INTO Directors (FirstName, LastName, BirthDate, Country) VALUES
('Steven', 'Spielberg', '1946-12-18', 'USA'),
('Christopher', 'Nolan', '1970-07-30', 'UK'),
('Quentin', 'Tarantino', '1963-03-27', 'USA');

-- Insert Cast Members
INSERT INTO Cast (FirstName, LastName, BirthDate, Role) VALUES
('Leonardo', 'DiCaprio', '1974-11-11', 'Lead Actor'),
('Brad', 'Pitt', '1963-12-18', 'Supporting Actor'),
('Emma', 'Stone', '1988-11-06', 'Lead Actress'),
('Tom', 'Hanks', '1956-07-09', 'Supporting Actor');

-- Insert Budgets
INSERT INTO Budgets (TotalBudget, MarketingBudget, ProductionBudget) VALUES
(200000000, 50000000, 150000000),
(160000000, 30000000, 130000000),
(100000000, 20000000, 80000000);

-- Insert Movies
INSERT INTO Movies (Title, ReleaseDate, DirectorID, Genre, BudgetID) VALUES
('Inception', '2010-07-16', 2, 'Science Fiction', 1),
('Titanic', '1997-12-19', 1, 'Romance', 2),
('Pulp Fiction', '1994-10-14', 3, 'Crime', 3);

-- Insert Movie Cast
INSERT INTO MovieCast (MovieID, CastID) VALUES
(1, 1), -- Inception, Leonardo DiCaprio
(1, 2), -- Inception, Brad Pitt
(2, 3), -- Titanic, Emma Stone
(2, 4), -- Titanic, Tom Hanks
(3, 1); -- Pulp Fiction, Leonardo DiCaprio
