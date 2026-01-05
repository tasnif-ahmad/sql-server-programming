-- Grant SELECT permission
GRANT SELECT ON dbo.Products TO SalesUser;

-- Revoke SELECT permission
REVOKE SELECT ON dbo.Products FROM SalesUser;

-- Grant INSERT permission
GRANT INSERT ON dbo.Categories TO SalesUser;

-- Revoke INSERT permission
REVOKE INSERT ON dbo.Categories FROM SalesUser;
 