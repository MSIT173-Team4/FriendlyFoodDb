CREATE TABLE [dbo].[tFoodMapPlaceCategory] (
    [fPlaceCategoryID] INT            IDENTITY (1, 1) NOT NULL,
    [fCategoryName]    NVARCHAR (50)  NOT NULL,
    [fDescription]     NVARCHAR (200) NULL,
    [fCreatedTime]     DATETIME2 (7)  CONSTRAINT [DF_tFoodMapPlaceCategory_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapPlaceCategory] PRIMARY KEY CLUSTERED ([fPlaceCategoryID] ASC),
    CONSTRAINT [UQ_tFoodMapPlaceCategory_fCategoryName] UNIQUE NONCLUSTERED ([fCategoryName] ASC)
);

