CREATE TABLE [dbo].[tRecipeIngredient] (
    [fRecipeIngredientId] INT             IDENTITY (1, 1) NOT NULL,
    [fRecipeId]           INT             NOT NULL,
    [fIngredientId]       INT             NOT NULL,
    [fDisplayAmount]      NVARCHAR (50)   NOT NULL,
    [fBaseAmount]         DECIMAL (10, 2) NULL,
    [fStandardUnit]       NVARCHAR (20)   NULL,
    [fIsMain]             BIT             NOT NULL,
    [fSortOrder]          SMALLINT        NOT NULL,
    CONSTRAINT [PK_tRecipeIngredient] PRIMARY KEY CLUSTERED ([fRecipeIngredientId] ASC)
);

