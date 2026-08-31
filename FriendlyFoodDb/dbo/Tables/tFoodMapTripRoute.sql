CREATE TABLE [dbo].[tFoodMapTripRoute] (
    [fTripRouteID]   INT             IDENTITY (1, 1) NOT NULL,
    [fTripID]        INT             NOT NULL,
    [fTotalDistance] DECIMAL (10, 2) NULL,
    [fTotalDuration] INT             NULL,
    [fPolyline]      NVARCHAR (MAX)  NULL,
    [fRouteProvider] VARCHAR (30)    NULL,
    [fRouteVersion]  INT             CONSTRAINT [DF_tFoodMapTripRoute_fRouteVersion] DEFAULT ((1)) NOT NULL,
    [fCreatedTime]   DATETIME2 (7)   CONSTRAINT [DF_tFoodMapTripRoute_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    [fUpdatedTime]   DATETIME2 (7)   NULL,
    CONSTRAINT [PK_tFoodMapTripRoute] PRIMARY KEY CLUSTERED ([fTripRouteID] ASC),
    CONSTRAINT [CK_tFoodMapTripRoute_fTotalDistance] CHECK ([fTotalDistance] IS NULL OR [fTotalDistance]>=(0)),
    CONSTRAINT [CK_tFoodMapTripRoute_fTotalDuration] CHECK ([fTotalDuration] IS NULL OR [fTotalDuration]>=(0)),
    CONSTRAINT [FK_tFoodMapTripRoute_fTrip] FOREIGN KEY ([fTripID]) REFERENCES [dbo].[tFoodMapTrip] ([fTripID]) ON DELETE CASCADE
);

