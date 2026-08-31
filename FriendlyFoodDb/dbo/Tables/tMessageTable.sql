CREATE TABLE [dbo].[tMessageTable] (
    [fMessageID]      INT            IDENTITY (1, 1) NOT NULL,
    [fPostID]         INT            NOT NULL,
    [fUserId]         INT            NOT NULL,
    [fReplyMessageID] INT            NOT NULL,
    [fMessageContent] NVARCHAR (MAX) NOT NULL,
    [fLikes]          INT            CONSTRAINT [DF_MessageTable_fLikes] DEFAULT ((0)) NOT NULL,
    [fViews]          INT            CONSTRAINT [DF_MessageTable_fViews] DEFAULT ((0)) NOT NULL,
    [fMessageDate]    DATETIME       NOT NULL,
    [fMessageState]   TINYINT        CONSTRAINT [DF_MessageTable_fMessageState] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_MessageTable] PRIMARY KEY CLUSTERED ([fMessageID] ASC),
    CONSTRAINT [FK_Message_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [FK_MessageTable_MessageTable] FOREIGN KEY ([fPostID]) REFERENCES [dbo].[tPostTable] ([fPostID])
);

