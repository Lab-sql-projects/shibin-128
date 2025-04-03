-- Create Directors Table
CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Country VARCHAR(50)
);

-- Create Cast Table
CREATE TABLE Cast (
    CastID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Role VARCHAR(100)
);

-- Create Movies Table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    ReleaseDate DATE,
    DirectorID INT,
    Genre VARCHAR(50),
    BudgetID INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID),
    FOREIGN KEY (BudgetID) REFERENCES Budgets(BudgetID)
);

-- Create Budgets Table
CREATE TABLE Budgets (
    BudgetID INT PRIMARY KEY AUTO_INCREMENT,
    TotalBudget DECIMAL(15, 2),
    MarketingBudget DECIMAL(15, 2),
    ProductionBudget DECIMAL(15, 2)
);

-- Create Movie Cast Table (many-to-many relationship between movies and cast)
CREATE TABLE MovieCast (
    MovieID INT,
    CastID INT,
    PRIMARY KEY (MovieID, CastID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (CastID) REFERENCES Cast(CastID)
);
