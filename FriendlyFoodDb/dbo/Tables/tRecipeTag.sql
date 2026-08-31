CREATE TABLE [dbo].[tRecipeTag] (
    [fTagId]   INT           IDENTITY (1, 1) NOT NULL,
    [fTagType] NVARCHAR (30) NOT NULL,
    [fTagName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tRecipeTag] PRIMARY KEY CLUSTERED ([fTagId] ASC)
);

