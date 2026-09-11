CREATE TABLE [dbo].[tPostLike]
(
    [fPostID] INT NOT NULL,
    [fUserId] INT NOT NULL,

    CONSTRAINT [PK_tPostLike]
        PRIMARY KEY ([fPostID], [fUserId]),

    CONSTRAINT [FK_tPostLike_tPostTable]
        FOREIGN KEY ([fPostID])
        REFERENCES [dbo].[tPostTable] ([fPostID]),

    CONSTRAINT [FK_tPostLike_tUser]
        FOREIGN KEY ([fUserId])
        REFERENCES [dbo].[tUser] ([fId])
);
