CREATE TABLE [dbo].[tRecipeFavorite] (
    [fFavoriteId] INT IDENTITY (1, 1) NOT NULL,
    [fUserId]     INT NOT NULL,
    [fRecipeId]   INT NOT NULL,
    CONSTRAINT [PK_tRecipeFavorite] PRIMARY KEY CLUSTERED ([fFavoriteId] ASC),
    CONSTRAINT [FK_RecipeFavorite_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

