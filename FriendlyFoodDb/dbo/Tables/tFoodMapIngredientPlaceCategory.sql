CREATE TABLE [dbo].[tFoodMapIngredientPlaceCategory] (
    [fMappingID]            INT           IDENTITY (1, 1) NOT NULL,
    [fIngredientCategoryID] INT           NOT NULL,
    [fPlaceCategoryID]      INT           NOT NULL,
    [fPriority]             INT           CONSTRAINT [DF_tFoodMapIngredientPlaceCategory_fPriority] DEFAULT ((1)) NOT NULL,
    [fIsActive]             BIT           CONSTRAINT [DF_tFoodMapIngredientPlaceCategory_fIsActive] DEFAULT ((1)) NOT NULL,
    [fCreatedTime]          DATETIME2 (7) CONSTRAINT [DF_tFoodMapIngredientPlaceCategory_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapIngredientPlaceCategory] PRIMARY KEY CLUSTERED ([fMappingID] ASC),
    CONSTRAINT [CK_tFoodMapIngredientPlaceCategory_fPriority] CHECK ([fPriority]>(0)),
    CONSTRAINT [FK_tFoodMapIngredientPlaceCategory_fIngredientCategory] FOREIGN KEY ([fIngredientCategoryID]) REFERENCES [dbo].[tFoodMapIngredientCategory] ([fIngredientCategoryID]),
    CONSTRAINT [FK_tFoodMapIngredientPlaceCategory_fPlaceCategory] FOREIGN KEY ([fPlaceCategoryID]) REFERENCES [dbo].[tFoodMapPlaceCategory] ([fPlaceCategoryID]),
    CONSTRAINT [UQ_tFoodMapIngredientPlaceCategory_fMapping] UNIQUE NONCLUSTERED ([fIngredientCategoryID] ASC, [fPlaceCategoryID] ASC)
);

