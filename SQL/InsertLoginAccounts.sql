-- Run this in SSMS to add the login accounts

USE EstateCoreDB;
GO

-- Insert accounts (if table exists, these will add new rows)
INSERT INTO Login (Username, Password, FullName, Email, Role)
VALUES 
('superadmin', 'admin123', 'Super Admin', 'superadmin@estatecore.com', 'SuperAdmin'),
('admin', 'admin123', 'Admin Enterprise', 'admin@estatecore.com', 'Admin'),
('tenant1', 'tenant123', 'Tenant User', 'tenant1@estatecore.com', 'Tenant');
GO

-- Check the accounts
SELECT * FROM Login;