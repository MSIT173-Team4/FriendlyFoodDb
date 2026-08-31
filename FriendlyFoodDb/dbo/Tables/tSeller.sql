CREATE TABLE [dbo].[tSeller] (
    [fId]          INT           IDENTITY (1, 1) NOT NULL,
    [fUserId]      INT           NOT NULL,
    [fSellerName]  VARCHAR (20)  NOT NULL,
    [fDescription] VARCHAR (150) NULL,
    [fStatus]      INT           NOT NULL,
    [fApplyDate]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([fId] ASC),
    CONSTRAINT [FK_Seller_Status] FOREIGN KEY ([fStatus]) REFERENCES [dbo].[tStatus] ([fId]),
    CONSTRAINT [FK_Seller_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

