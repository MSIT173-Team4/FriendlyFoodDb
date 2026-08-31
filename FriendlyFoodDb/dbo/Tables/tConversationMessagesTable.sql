CREATE TABLE [dbo].[tConversationMessagesTable] (
    [fId]             INT            IDENTITY (1, 1) NOT NULL,
    [fConversationId] INT            NOT NULL,
    [fSenderId]       INT            NOT NULL,
    [fMessageType]    NVARCHAR (20)  NOT NULL,
    [fContent]        NVARCHAR (MAX) NOT NULL,
    [fCreatedDate]    DATETIME       NOT NULL,
    [fUpdatedDate]    DATETIME       NOT NULL,
    [fDeletedDate]    DATETIME       NULL,
    CONSTRAINT [PK_tConversationMessagesTable] PRIMARY KEY CLUSTERED ([fId] ASC),
    CONSTRAINT [FK_tConversationMessagesTable_tConversationsTable] FOREIGN KEY ([fConversationId]) REFERENCES [dbo].[tConversationsTable] ([fConversationId])
);

