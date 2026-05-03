-- Organizations Table for Super Admin
CREATE TABLE Organization (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    Plan NVARCHAR(50) DEFAULT 'Basic',  -- Basic, Premium, Enterprise
    Deadline DATE,                    -- Membership deadline
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME DEFAULT GETDATE()
);

-- Residents Table (per organization)
CREATE TABLE Resident (
    Id INT PRIMARY KEY IDENTITY(1,1),
    OrganizationId INT NOT NULL,
    Username NVARCHAR(100) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    FullName NVARCHAR(255),
    Email NVARCHAR(255),
    Phone NVARCHAR(50),
    UnitNumber NVARCHAR(50),
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (OrganizationId) REFERENCES Organization(Id)
);

-- Staff Table (per organization)
CREATE TABLE Staff (
    Id INT PRIMARY KEY IDENTITY(1,1),
    OrganizationId INT NOT NULL,
    Username NVARCHAR(100) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    FullName NVARCHAR(255),
    Email NVARCHAR(255),
    Role NVARCHAR(50),  -- Manager, Guard, Maintenance
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (OrganizationId) REFERENCES Organization(Id)
);

-- Insert sample organizations
INSERT INTO Organization (Name, Plan, Deadline, IsActive)
VALUES 
('Sunset Valley Estate', 'Premium', '2026-12-31', 1),
('Metro Towers', 'Basic', '2026-06-30', 1),
('Green Hills Community', 'Enterprise', '2027-12-31', 1);

-- Sample residents for Sunset Valley
INSERT INTO Resident (OrganizationId, Username, PasswordHash, FullName, Email, UnitNumber)
VALUES 
(1, 'john.doe', 'pass123', 'John Doe', 'john.doe@email.com', '101'),
(1, 'jane.smith', 'pass123', 'Jane Smith', 'jane.smith@email.com', '102');

-- Sample staff for Sunset Valley
INSERT INTO Staff (OrganizationId, Username, PasswordHash, FullName, Email, Role)
VALUES 
(1, 'mark.manager', 'pass123', 'Mark Manager', 'mark@sv.com', 'Manager'),
(1, 'bob.guard', 'pass123', 'Bob Guard', 'bob@sv.com', 'Guard');