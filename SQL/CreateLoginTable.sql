-- Run this in SSMS to create Login table

USE EstateCoreDB;
GO

CREATE TABLE Login (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    UnitNumber VARCHAR(20),
    Role VARCHAR(20) NOT NULL,
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME DEFAULT GETDATE(),
    LastLogin DATETIME NULL
);
GO

INSERT INTO Login (Username, Password, FullName, Email, Role)
VALUES 
('superadmin', 'admin123', 'Super Admin', 'superadmin@estatecore.com', 'SuperAdmin'),
('admin', 'admin123', 'Admin User', 'admin@estatecore.com', 'Admin');
GO

SELECT * FROM Login;