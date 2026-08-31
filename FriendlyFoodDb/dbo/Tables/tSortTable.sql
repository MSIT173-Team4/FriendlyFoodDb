CREATE TABLE [dbo].[tSortTable] (
    [fSortId]   INT           IDENTITY (1, 1) NOT NULL,
    [fSortName] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_SortTable] PRIMARY KEY CLUSTERED ([fSortId] ASC)
);

