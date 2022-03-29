ALTER TABLE dbo.Inventory
  ADD descr NVARCHAR(200) NULL;

GO

UPDATE dbo.Inventory
  SET descr = 'good looking banana'
  WHERE id = 1;

UPDATE dbo.Inventory
  SET descr = 'orange orange'
  WHERE id = 2;

INSERT INTO dbo.Inventory (id, name, quantity, descr)
  VALUES (3, 'melon', 32, 'watter melon');
