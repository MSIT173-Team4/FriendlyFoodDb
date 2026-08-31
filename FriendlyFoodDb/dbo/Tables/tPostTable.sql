CREATE TABLE [dbo].[tPostTable] (
    [fPostID]      INT            IDENTITY (1, 1) NOT NULL,
    [fUserId]      INT            NOT NULL,
    [fTitle]       NVARCHAR (50)  NOT NULL,
    [fPostContent] NVARCHAR (MAX) NOT NULL,
    [fLikes]       INT            CONSTRAINT [DF_PostTable_fLikes] DEFAULT ((0)) NOT NULL,
    [fViews]       INT            CONSTRAINT [DF_PostTable_fViews] DEFAULT ((0)) NOT NULL,
    [fPostDate]    DATETIME       NOT NULL,
    [fPostState]   TINYINT        CONSTRAINT [DF_PostTable_fPostState] DEFAULT ((1)) NOT NULL,
    [fSortId]      INT            NOT NULL,
    [fRecipeId]    INT            NULL,
    CONSTRAINT [PK_PostTable] PRIMARY KEY CLUSTERED ([fPostID] ASC),
    CONSTRAINT [FK_PostTable_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [FK_tPostTable_tRecipe] FOREIGN KEY ([fRecipeId]) REFERENCES [dbo].[tRecipe] ([fRecipeId]),
    CONSTRAINT [FK_tPostTable_tSortTable] FOREIGN KEY ([fSortId]) REFERENCES [dbo].[tSortTable] ([fSortId])
);

