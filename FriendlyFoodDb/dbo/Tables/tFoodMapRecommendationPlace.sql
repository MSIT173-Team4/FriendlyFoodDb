CREATE TABLE [dbo].[tFoodMapRecommendationPlace] (
    [fCampaignPlaceID] INT           IDENTITY (1, 1) NOT NULL,
    [fCampaignID]      INT           NOT NULL,
    [fPlaceID]         INT           NOT NULL,
    [fSortOrder]       INT           CONSTRAINT [DF_tFoodMapRecommendationPlace_fSortOrder] DEFAULT ((0)) NOT NULL,
    [fIsRecommend]     BIT           CONSTRAINT [DF_tFoodMapRecommendationPlace_fIsRecommend] DEFAULT ((1)) NOT NULL,
    [fCreatedTime]     DATETIME2 (7) CONSTRAINT [DF_tFoodMapRecommendationPlace_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tFoodMapRecommendationPlace] PRIMARY KEY CLUSTERED ([fCampaignPlaceID] ASC),
    CONSTRAINT [FK_tFoodMapRecommendationPlace_fCampaign] FOREIGN KEY ([fCampaignID]) REFERENCES [dbo].[tFoodMapRecommendationCampaign] ([fCampaignID]) ON DELETE CASCADE,
    CONSTRAINT [FK_tFoodMapRecommendationPlace_fPlace] FOREIGN KEY ([fPlaceID]) REFERENCES [dbo].[tFoodMapPlace] ([fPlaceID]),
    CONSTRAINT [UQ_tFoodMapRecommendationPlace_fCampaign_fPlace] UNIQUE NONCLUSTERED ([fCampaignID] ASC, [fPlaceID] ASC)
);

