CREATE TABLE [dbo].[tFoodMapTripPlace] (
    [fTripPlaceID]          INT             IDENTITY (1, 1) NOT NULL,
    [fTripID]               INT             NOT NULL,
    [fPlaceID]              INT             NOT NULL,
    [fSortOrder]            INT             NOT NULL,
    [fVisitTime]            TIME (7)        NULL,
    [fStayMinutes]          INT             NULL,
    [fDistanceFromPrevious] DECIMAL (10, 2) NULL,
    [fDurationFromPrevious] INT             NULL,
    [fNote]                 NVARCHAR (200)  NULL,
    [fCreatedTime]          DATETIME2 (7)   CONSTRAINT [DF_tFoodMapTripPlace_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapTripPlace] PRIMARY KEY CLUSTERED ([fTripPlaceID] ASC),
    CONSTRAINT [CK_tFoodMapTripPlace_fSortOrder] CHECK ([fSortOrder]>(0)),
    CONSTRAINT [CK_tFoodMapTripPlace_fStayMinutes] CHECK ([fStayMinutes] IS NULL OR [fStayMinutes]>=(0)),
    CONSTRAINT [FK_tFoodMapTripPlace_fPlace] FOREIGN KEY ([fPlaceID]) REFERENCES [dbo].[tFoodMapPlace] ([fPlaceID]),
    CONSTRAINT [FK_tFoodMapTripPlace_fTrip] FOREIGN KEY ([fTripID]) REFERENCES [dbo].[tFoodMapTrip] ([fTripID]) ON DELETE CASCADE,
    CONSTRAINT [UQ_tFoodMapTripPlace_fTrip_fSortOrder] UNIQUE NONCLUSTERED ([fTripID] ASC, [fSortOrder] ASC)
);

