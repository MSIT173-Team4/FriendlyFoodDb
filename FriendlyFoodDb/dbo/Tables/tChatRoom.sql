CREATE TABLE [dbo].[tChatRoom] (
    [fId]          INT           IDENTITY (1, 1) NOT NULL,
    [fUser1Id]     INT           NOT NULL,
    [fUser2Id]     INT           NOT NULL,
    [fCreatedTime] DATETIME2 (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([fId] ASC),
    CONSTRAINT [UQ_tChatRoom_User1Id_User2Id] UNIQUE NONCLUSTERED ([fUser1Id] ASC, [fUser2Id] ASC),
    CONSTRAINT [FK_ChatRoom_User1] FOREIGN KEY ([fUser1Id]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [FK_ChatRoom_User2] FOREIGN KEY ([fUser2Id]) REFERENCES [dbo].[tUser] ([fId])
);
