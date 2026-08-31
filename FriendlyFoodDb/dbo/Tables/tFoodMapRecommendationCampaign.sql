CREATE TABLE [dbo].[tFoodMapRecommendationCampaign] (
    [fCampaignID]     INT            IDENTITY (1, 1) NOT NULL,
    [fTitle]          NVARCHAR (100) NOT NULL,
    [fContent]        NVARCHAR (MAX) NULL,
    [fBannerImageURL] NVARCHAR (500) NULL,
    [fPriority]       INT            CONSTRAINT [DF_tFoodMapRecommendationCampaign_fPriority] DEFAULT ((0)) NOT NULL,
    [fStartDate]      DATE           NULL,
    [fEndDate]        DATE           NULL,
    [fIsActive]       BIT            CONSTRAINT [DF_tFoodMapRecommendationCampaign_fIsActive] DEFAULT ((1)) NOT NULL,
    [fCreatedTime]    DATETIME2 (7)  CONSTRAINT [DF_tFoodMapRecommendationCampaign_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    [fUpdatedTime]    DATETIME2 (7)  NULL,
    CONSTRAINT [PK_tFoodMapRecommendationCampaign] PRIMARY KEY CLUSTERED ([fCampaignID] ASC),
    CONSTRAINT [CK_tFoodMapRecommendationCampaign_fDate] CHECK ([fEndDate] IS NULL OR [fStartDate] IS NULL OR [fEndDate]>=[fStartDate])
);

