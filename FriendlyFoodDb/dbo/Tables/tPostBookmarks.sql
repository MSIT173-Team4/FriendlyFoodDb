CREATE TABLE [dbo].[tPostBookmarks]
(
	[fBookmark_Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY, 
    [fUserId] INT NOT NULL, 
    [fPostID] INT NOT NULL, 
    [fBookmark_Date] DATETIME2(0) NOT NULL DEFAULT GETDATE(),
    CONSTRAINT [UQ_tPostBookmarks_User_Post]
        UNIQUE ([fUserId], [fPostID]),
        CONSTRAINT [FK_tPostBookmarks_tPostTable_fPostID]
        FOREIGN KEY ([fPostID])
        REFERENCES [dbo].[tPostTable] ([fPostID]),

    CONSTRAINT [FK_tPostBookmarks_tUser_fUserId]
        FOREIGN KEY ([fUserId])
        REFERENCES [dbo].[tUser] ([fId])
)
