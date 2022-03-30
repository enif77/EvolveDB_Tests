SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory](
	[id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[quantity] [int] NULL
) ON [PRIMARY]

GO

INSERT INTO dbo.Inventory (id, name, quantity)
  VALUES (1, 'banana', 150);

INSERT INTO dbo.Inventory (id, name, quantity)
  VALUES (2, 'orange', 154);
  