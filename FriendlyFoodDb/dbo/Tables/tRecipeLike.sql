CREATE TABLE [dbo].[tRecipeLike] (
    [fLikeId]   INT IDENTITY (1, 1) NOT NULL,
    [fUserId]   INT NOT NULL,
    [fRecipeId] INT NOT NULL,
    CONSTRAINT [PK_tRecipeLike] PRIMARY KEY CLUSTERED ([fLikeId] ASC),
    CONSTRAINT [FK_RecipeLike_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

