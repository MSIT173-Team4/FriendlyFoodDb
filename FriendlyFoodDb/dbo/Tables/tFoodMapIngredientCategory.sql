CREATE TABLE [dbo].[tFoodMapIngredientCategory] (
    [fIngredientCategoryID] INT            IDENTITY (1, 1) NOT NULL,
    [fCategoryName]         NVARCHAR (50)  NOT NULL,
    [fDescription]          NVARCHAR (200) NULL,
    [fCreatedTime]          DATETIME2 (7)  CONSTRAINT [DF_tFoodMapIngredientCategory_CreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapIngredientCategory] PRIMARY KEY CLUSTERED ([fIngredientCategoryID] ASC),
    CONSTRAINT [UQ_tFoodMapIngredientCategory_fCategoryName] UNIQUE NONCLUSTERED ([fCategoryName] ASC)
);

