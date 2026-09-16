CREATE TABLE [dbo].[tMessageLike]
(
    [fMessageLikeID] INT IDENTITY(1,1) NOT NULL,
    [fMessageID] INT NOT NULL,
    [fUserId] INT NOT NULL,

    CONSTRAINT [PK_tMessageLike]
        PRIMARY KEY ([fMessageLikeID]),

    CONSTRAINT [UQ_tMessageLike_Message_User]
        UNIQUE ([fMessageID], [fUserId]),

    CONSTRAINT [FK_tMessageLike_tMessageTable_fMessageID]
        FOREIGN KEY ([fMessageID])
        REFERENCES [dbo].[tMessageTable] ([fMessageID]),

    CONSTRAINT [FK_tMessageLike_tUser_fUserId]
        FOREIGN KEY ([fUserId])
        REFERENCES [dbo].[tUser] ([fId])
);
