CREATE TABLE [dbo].[TRefreshToken]
(
	[fId] INT NOT NULL PRIMARY KEY Identity,
	[fUserId] int not null ,
	[fToken] varchar(255) not null,
	[fCreate] datetime not null default getdate(),
	[fExpired] datetime not null,
	[fRevoke] bit not null default 0,
	CONSTRAINT FK_RefreshToken_User foreign key (fUserId) references tUser(fId)
)
