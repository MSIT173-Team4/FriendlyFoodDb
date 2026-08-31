CREATE TABLE [dbo].[tApply] (
    [fId]               INT           NOT NULL,
    [fUserId]           INT           NOT NULL,
    [fStoreName]        VARCHAR (20)  NOT NULL,
    [fStoreDescription] VARCHAR (150) NULL,
    [fIdNum]            VARCHAR (10)  NOT NULL,
    [fIdCard]           VARCHAR (500) NOT NULL,
    [fStatus]           INT           NOT NULL,
    [fSendingDate]      DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([fId] ASC),
    CONSTRAINT [FK_Apply_Status] FOREIGN KEY ([fStatus]) REFERENCES [dbo].[tApplyStatus] ([fId]),
    CONSTRAINT [FK_Apply_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

