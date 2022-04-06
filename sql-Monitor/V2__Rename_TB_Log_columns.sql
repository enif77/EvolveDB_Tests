-- Columns renaming and existing indexes updating.

EXEC sp_rename 'dbo.Log.when', 'When', 'COLUMN';
EXEC sp_rename 'dbo.Log.severity', 'Severity', 'COLUMN';
EXEC sp_rename 'dbo.Log.text', 'Text', 'COLUMN';

GO

DROP INDEX dbo.Log.IX_When;
GO

CREATE INDEX IX_When ON dbo.Log ([When] ASC);  
GO

DROP INDEX dbo.Log.IX_Severity;
GO

CREATE INDEX IX_Severity ON dbo.Log ([Severity] DESC);  
GO
