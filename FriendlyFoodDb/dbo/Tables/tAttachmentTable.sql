CREATE TABLE [dbo].[tAttachmentTable] (
    [fId]          INT            IDENTITY (1, 1) NOT NULL,
    [fMessageId]   INT            NOT NULL,
    [fFileType]    NVARCHAR (20)  NOT NULL,
    [fFileName]    NVARCHAR (MAX) NOT NULL,
    [fFileUrl]     NVARCHAR (MAX) NOT NULL,
    [fFileSize]    BIGINT         NOT NULL,
    [fMimeType]    NVARCHAR (MAX) NOT NULL,
    [fCreatedDate] DATETIME       NOT NULL,
    CONSTRAINT [PK_tAttachmentTable] PRIMARY KEY CLUSTERED ([fId] ASC),
    CONSTRAINT [FK_tAttachmentTable_tConversationMessagesTable] FOREIGN KEY ([fMessageId]) REFERENCES [dbo].[tConversationMessagesTable] ([fId])
);

