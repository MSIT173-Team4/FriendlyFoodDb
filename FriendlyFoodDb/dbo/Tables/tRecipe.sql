CREATE TABLE [dbo].[tRecipe] (
    [fRecipeId]        INT            IDENTITY (1, 1) NOT NULL,
    [fUserId]          INT            NOT NULL,
    [fCategoryId]      INT            NOT NULL,
    [fTitle]           NVARCHAR (100) NOT NULL,
    [fDescription]     NVARCHAR (500) NULL,
    [fCoverImageUrl]   NVARCHAR (500) NULL,
    [fYtVideoId]       VARCHAR (15)   NULL,
    [fAiPrepTips]      NVARCHAR (MAX) NULL,
    [fIsAiGenerated]   BIT            NOT NULL,
    [fDefaultServings] INT            NOT NULL,
    [fCookingMinutes]  INT            NOT NULL,
    [fTotalCalories]   DECIMAL (8, 2) NOT NULL,
    [fViews]           INT            NOT NULL,
    [fLikes]           INT            NOT NULL,
    [fFavorites]       INT            NOT NULL,
    [fStatus]          TINYINT        NOT NULL,
    [fCreatedAt]       DATETIME2 (7)  NOT NULL,
    [fUpdatedAt]       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_tRecipe] PRIMARY KEY CLUSTERED ([fRecipeId] ASC),
    CONSTRAINT [FK_UserId_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

