CREATE TABLE [dbo].[tChat]
(
	[fId] INT NOT NULL PRIMARY KEY identity(1,1),
	[fChatRoomId] INT NOT NULL,
	[fSenderId] INT NOT NULL,
	[fMessageType] INT NOT NULL,
	[fContent] nvarchar(max) null,
	[fFileName] nvarchar(255) null,
	[fFileURL] nvarchar(255) null,
	[fCreatedTime] datetime2 NOT NULL DEFAULT GETDATE(),
	constraint [FK_tChat_tChatRoom] FOREIGN KEY ([fChatRoomId]) REFERENCES [dbo].[tChatRoom]([fId]),
	constraint [FK_tChat_tUser] FOREIGN KEY ([fSenderId]) REFERENCES [dbo].[tUser]([fId])
)