CREATE TABLE [dbo].[tRecipeUserPantry] (
    [fPantryId]       INT             IDENTITY (1, 1) NOT NULL,
    [fUserId]         INT             NOT NULL,
    [fIngredientId]   INT             NOT NULL,
    [fAmount]         DECIMAL (10, 2) NOT NULL,
    [fUnit]           NVARCHAR (20)   NOT NULL,
    [fExpirationDate] DATE            NOT NULL,
    [fCreatedAt]      DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_tRecipeUserPantry] PRIMARY KEY CLUSTERED ([fPantryId] ASC)
);

