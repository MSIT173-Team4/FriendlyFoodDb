CREATE TABLE [dbo].[tFoodMapTrip] (
    [fTripID]      INT            IDENTITY (1, 1) NOT NULL,
    [fUserID]      INT            NOT NULL,
    [fTripName]    NVARCHAR (100) NOT NULL,
    [fTripDate]    DATE           NULL,
    [fStartTime]   TIME (7)       NULL,
    [fDescription] NVARCHAR (500) NULL,
    [fStatus]      VARCHAR (20)   CONSTRAINT [DF_tFoodMapTrip_fStatus] DEFAULT ('Draft') NOT NULL,
    [fCreatedTime] DATETIME2 (7)  CONSTRAINT [DF_tFoodMapTrip_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    [fUpdatedTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_tFoodMapTrip] PRIMARY KEY CLUSTERED ([fTripID] ASC),
    CONSTRAINT [CK_tFoodMapTrip_fStatus] CHECK ([fStatus]='Cancelled' OR [fStatus]='Completed' OR [fStatus]='Confirmed' OR [fStatus]='Planning' OR [fStatus]='Draft'),
    CONSTRAINT [FK_FoodMapTrip_User] FOREIGN KEY ([fUserID]) REFERENCES [dbo].[tUser] ([fId])
);

