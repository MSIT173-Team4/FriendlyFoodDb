CREATE TABLE [dbo].[tFoodMapFavorite] (
    [fFavoriteID]  INT           IDENTITY (1, 1) NOT NULL,
    [fUserId]      INT           NOT NULL,
    [fPlaceID]     INT           NOT NULL,
    [fCreatedTime] DATETIME2 (7) CONSTRAINT [DF_tFoodMapFavorite_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapFavorite] PRIMARY KEY CLUSTERED ([fFavoriteID] ASC),
    CONSTRAINT [FK_FoodMapFavorite_User] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [FK_tFoodMapFavorite_fPlace] FOREIGN KEY ([fPlaceID]) REFERENCES [dbo].[tFoodMapPlace] ([fPlaceID]) ON DELETE CASCADE,
    CONSTRAINT [UQ_tFoodMapFavorite_fMember_fPlace] UNIQUE NONCLUSTERED ([fUserId] ASC, [fPlaceID] ASC)
);

