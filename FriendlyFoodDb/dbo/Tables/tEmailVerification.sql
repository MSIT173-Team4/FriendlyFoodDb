CREATE TABLE [dbo].[tEmailVerification]
(
	[fId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [fUser_Id] INT NOT NULL, 
    [fToken] NVARCHAR(255) NOT NULL, 
    [fType] NVARCHAR(50) NOT NULL, 
    [fExpire_at] DATETIME2 NOT NULL, 
    [fUsed] BIT NOT NULL, 
    CONSTRAINT [FK_EV_tUser] FOREIGN KEY ([fUser_Id]) REFERENCES [tUser]([fId])
)
