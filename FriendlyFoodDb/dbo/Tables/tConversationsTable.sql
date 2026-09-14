CREATE TABLE [dbo].[tConversationsTable] (
    [fConversationId] INT      IDENTITY (1, 1) NOT NULL,
    [fCreatedDate]    DATETIME2(0) NOT NULL DEFAULT GETDATE(),
    [fUpdatedDate]    DATETIME2(0) NOT NULL DEFAULT GETDATE(),
    CONSTRAINT [PK_fConversationsTable] PRIMARY KEY CLUSTERED ([fConversationId] ASC)
);

