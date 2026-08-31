CREATE TABLE [dbo].[tFoodMapPlaceImage] (
    [fImageID]     INT            IDENTITY (1, 1) NOT NULL,
    [fPlaceID]     INT            NOT NULL,
    [fImageURL]    NVARCHAR (500) NOT NULL,
    [fImageType]   VARCHAR (30)   NULL,
    [fSortOrder]   INT            CONSTRAINT [DF_tFoodMapPlaceImage_fSortOrder] DEFAULT ((0)) NOT NULL,
    [fCreatedTime] DATETIME2 (7)  CONSTRAINT [DF_tFoodMapPlaceImage_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapPlaceImage] PRIMARY KEY CLUSTERED ([fImageID] ASC),
    CONSTRAINT [FK_tFoodMapPlaceImage_fPlace] FOREIGN KEY ([fPlaceID]) REFERENCES [dbo].[tFoodMapPlace] ([fPlaceID]) ON DELETE CASCADE
);

