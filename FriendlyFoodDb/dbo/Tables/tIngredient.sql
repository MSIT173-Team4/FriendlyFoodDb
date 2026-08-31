CREATE TABLE [dbo].[tIngredient] (
    [fId]   INT           IDENTITY (1, 1) NOT NULL,
    [fName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tIngredient] PRIMARY KEY CLUSTERED ([fId] ASC)
);

