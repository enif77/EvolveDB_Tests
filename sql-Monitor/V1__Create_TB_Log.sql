SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Log](
	[when] [datetime ] NOT NULL,
	[severity] [int] NOT NULL,
	[text] [nvarchar](max) NOT NULL
) ON [PRIMARY]

GO

CREATE INDEX IX_When ON dbo.Log ([when] ASC);  

GO

CREATE INDEX IX_Severity ON dbo.Log ([severity] DESC);  

GO

INSERT INTO dbo.Log ([when], [severity], [text])
  VALUES (GETDATE(), 0, 'The "Log" table created.');
