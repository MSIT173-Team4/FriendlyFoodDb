CREATE TABLE [dbo].[tExternalLogin]
(
	[fId] INT NOT NULL PRIMARY KEY Identity,
	[fUserId] INT NOT NULL,
	[fProvider] varchar(50) not null,
	[fProviderUserId] varchar(500) not null,
	constraint FK_ExternalLogin_User foreign key (fUserId) references tUser(fId),
	constraint UQ_ExternalLogin unique (fProvider,fProviderUserId)
)
