CREATE TABLE [dbo].[tUser] (
    [fId]         INT            IDENTITY (1, 1) NOT NULL,
    [fUsername]   VARCHAR (16)   NOT NULL,
    [fPassword]   NVARCHAR(MAX) NOT NULL,
    [fEmail]      VARCHAR (100)  NOT NULL,
    [fPhone]      VARCHAR (10)   NOT NULL,
    [fIdNum]      VARCHAR (10)   NOT NULL,
    [fAddress]    VARCHAR (50)   NOT NULL,
    [fImage]      VARCHAR (MAX)  NULL,
    [fIsActive]   BIT            DEFAULT ((0)) NOT NULL,
    [fIsAdmin]    BIT            NOT NULL,
    [fCreateTime] DATETIME       NOT NULL,
    [fLastLogin]  DATETIME       NULL,
    CONSTRAINT PK_tUser PRIMARY KEY CLUSTERED ([fId] ASC),
    UNIQUE NONCLUSTERED ([fUsername] ASC)
);

