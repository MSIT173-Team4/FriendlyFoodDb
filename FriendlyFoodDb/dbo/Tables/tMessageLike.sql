CREATE TABLE [dbo].[tMessageLike]
(
	[fMessageID] INT NOT NULL, 
    [fUserId] INT NOT NULL,
	CONSTRAINT [PK_tMessageLike]
        PRIMARY KEY ([fMessageID], [fUserId]),

    CONSTRAINT [FK_tMessageLike_tMessageTable]
        FOREIGN KEY ([fMessageID])
        REFERENCES [dbo].[tMessageTable] ([fMessageID]),

    CONSTRAINT [FK_tMessageLike_tUser]
        FOREIGN KEY ([fUserId])
        REFERENCES [dbo].[tUser] ([fId])
)
