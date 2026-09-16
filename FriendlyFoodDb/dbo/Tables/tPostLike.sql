CREATE TABLE [dbo].[tPostLike]
(
    [fPostLikeID] INT IDENTITY(1,1) NOT NULL,
    [fPostID] INT NOT NULL,
    [fUserId] INT NOT NULL,

    CONSTRAINT [PK_tPostLike]
        PRIMARY KEY ([fPostLikeID]),

    CONSTRAINT [UQ_tPostLike_Post_User]
        UNIQUE ([fPostID], [fUserId]),

    CONSTRAINT [FK_tPostLike_tPostTable]
        FOREIGN KEY ([fPostID])
        REFERENCES [dbo].[tPostTable] ([fPostID]),

    CONSTRAINT [FK_tPostLike_tUser]
        FOREIGN KEY ([fUserId])
        REFERENCES [dbo].[tUser] ([fId])
);