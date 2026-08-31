CREATE TABLE [dbo].[tRecipeCategory] (
    [fCategoryId]   INT           IDENTITY (1, 1) NOT NULL,
    [fCategoryName] NVARCHAR (50) NOT NULL,
    [fDisplayOrder] SMALLINT      NOT NULL,
    CONSTRAINT [PK_tRecipeCategory] PRIMARY KEY CLUSTERED ([fCategoryId] ASC)
);

