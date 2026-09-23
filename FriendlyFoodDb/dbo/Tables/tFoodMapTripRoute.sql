CREATE TABLE [dbo].[tFoodMapTripRoute] (
    [fTripRouteID]   INT             IDENTITY (1, 1) NOT NULL,
    [fTripID]        INT             NOT NULL,
    [fDistanceMeters] INT NULL,
    [fDurationSeconds] INT             NULL,
    [fPolyline]      NVARCHAR (MAX)  NULL,
    [fRouteProvider] VARCHAR (30)    NULL,
    [fRouteVersion]  INT             CONSTRAINT [DF_tFoodMapTripRoute_fRouteVersion] DEFAULT ((1)) NULL,
    [fCreatedTime]   DATETIME2 (0)   CONSTRAINT [DF_tFoodMapTripRoute_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    [fUpdatedTime]   DATETIME2 (0)   NULL,
    [fFromTripPlaceID] INT NULL, 
    [fToTripPlaceID] INT NULL, 
    CONSTRAINT [PK_tFoodMapTripRoute] PRIMARY KEY CLUSTERED ([fTripRouteID] ASC),
    CONSTRAINT [CK_tFoodMapTripRoute_fTotalDistance] CHECK ([fDistanceMeters] IS NULL OR [fDistanceMeters]>=(0)),
    CONSTRAINT [CK_tFoodMapTripRoute_fTotalDuration] CHECK ([fDurationSeconds] IS NULL OR [fDurationSeconds]>=(0)),
    CONSTRAINT [FK_tFoodMapTripRoute_fTrip] FOREIGN KEY ([fTripID]) REFERENCES [dbo].[tFoodMapTrip] ([fTripID]) ON DELETE CASCADE,
    CONSTRAINT [FK_tFoodMapTripRoute_fFromTripPlace] FOREIGN KEY ([fFromTripPlaceID]) REFERENCES tFoodMapTripPlace(fTripPlaceId),
    CONSTRAINT [FK_tFoodMapTripRoute_fToTripPlace] FOREIGN KEY ([fToTripPlaceID]) REFERENCES tFoodMapTripPlace(fTripPlaceId)
);

