CREATE TABLE [dbo].[tMarketProductFavorite] (
    [fFavoriteID]  INT           IDENTITY (1, 1) NOT NULL,
    [fUserId]      INT           NOT NULL,
    [fProductID]   INT           NOT NULL,
    [fCreatedDate] DATETIME2 (7) DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tMarketFavorites] PRIMARY KEY CLUSTERED ([fFavoriteID] ASC),
    CONSTRAINT [FK_tMarketProductFavorite_tMarketProduct] FOREIGN KEY ([fProductID]) REFERENCES [dbo].[tMarketProduct] ([fProductID]),
    CONSTRAINT [FK_tMarketProductFavorite_tUser] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [UQ_tMarketProductFavorite_User_Product] UNIQUE NONCLUSTERED ([fUserId] ASC, [fProductID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品收藏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductFavorite';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'收藏ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductFavorite', @level2type = N'COLUMN', @level2name = N'fFavoriteID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'會員編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductFavorite', @level2type = N'COLUMN', @level2name = N'fUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductFavorite', @level2type = N'COLUMN', @level2name = N'fProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'加入時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductFavorite', @level2type = N'COLUMN', @level2name = N'fCreatedDate';

