CREATE TABLE [dbo].[tConversationsTable] (
    [fConversationId] INT      IDENTITY (1, 1) NOT NULL,
    [fCreatedDate]    DATETIME NOT NULL,
    [fUpdatedDate]    DATETIME NOT NULL,
    CONSTRAINT [PK_fConversationsTable] PRIMARY KEY CLUSTERED ([fConversationId] ASC)
);

