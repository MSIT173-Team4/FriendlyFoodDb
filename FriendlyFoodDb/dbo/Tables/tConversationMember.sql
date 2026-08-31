CREATE TABLE [dbo].[tConversationMember] (
    [fConversationId]    INT      NOT NULL,
    [fUserId]            INT      NOT NULL,
    [fLastReadMessageId] INT      NULL,
    [fLastReadDate]      DATETIME NULL,
    PRIMARY KEY CLUSTERED ([fConversationId] ASC, [fUserId] ASC),
    FOREIGN KEY ([fConversationId]) REFERENCES [dbo].[tConversationsTable] ([fConversationId]),
    FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

