CREATE TABLE [dbo].[tPostBlockTable]
(
	[fPostBlockID] INT IDENTITY(1,1) PRIMARY KEY, 
    [fPostID] INT NOT NULL, 
    [fBlockType] NVARCHAR(20) NOT NULL, 
    [fContent] NVARCHAR(MAX) NULL, 
    [fMediaUrl] NVARCHAR(500) NULL, 
    [fSortOrder] INT NOT NULL, 
    [fCreateDate] DATETIME2(0) NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_tPostBlockTable_tPostTable
        FOREIGN KEY (fPostID)
        REFERENCES tPostTable(fPostID)
        ON DELETE CASCADE
)
