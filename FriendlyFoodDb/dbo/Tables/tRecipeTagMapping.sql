CREATE TABLE [dbo].[tRecipeTagMapping] (
    [fMappingId] INT IDENTITY (1, 1) NOT NULL,
    [fRecipeId]  INT NOT NULL,
    [fTagId]     INT NOT NULL,
    CONSTRAINT [PK_tRecipeTagMapping] PRIMARY KEY CLUSTERED ([fMappingId] ASC)
);

