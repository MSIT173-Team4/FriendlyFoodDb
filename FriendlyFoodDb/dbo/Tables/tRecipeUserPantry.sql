CREATE TABLE [dbo].[tRecipeUserPantry] (
    [fPantryId]       INT             IDENTITY (1, 1) NOT NULL,
    [fUserId]         INT             NOT NULL,
    [fIngredientId]   INT             NOT NULL,
    [fAmount]         DECIMAL (10, 2) NOT NULL,
    [fUnit]           NVARCHAR (20)   NOT NULL,
    [fExpirationDate] DATE            NOT NULL,
    [fCreatedAt]      DATETIME2 (7)   NOT NULL,
    [fStorageLocation] NVARCHAR(20) NOT NULL CONSTRAINT DF_Pantry_Storage DEFAULT N'冷藏',
    [fNote] NVARCHAR(150) NULL, 
    CONSTRAINT [PK_tRecipeUserPantry] PRIMARY KEY CLUSTERED ([fPantryId] ASC),
    CONSTRAINT [FK_RecipeUserPantry_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);

