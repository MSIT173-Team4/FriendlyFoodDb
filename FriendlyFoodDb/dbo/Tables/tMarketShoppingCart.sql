CREATE TABLE [dbo].[tMarketShoppingCart] (
    [fCartItemId]  INT           IDENTITY (1, 1) NOT NULL,
    [fUserId]      INT           NOT NULL,
    [fSellerId]    INT           NOT NULL,
    [fProductId]   INT           NOT NULL,
    [fQuantity]    INT           NOT NULL,
    [fCreatedDate] DATETIME2 (7) DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_tMarketShoppingCarts] PRIMARY KEY CLUSTERED ([fCartItemId] ASC),
    CONSTRAINT [FK_tMarketShoppingCart_tMarketProduct] FOREIGN KEY ([fProductId]) REFERENCES [dbo].[tMarketProduct] ([fProductID]),
    CONSTRAINT [FK_tMarketShoppingCart_tSeller] FOREIGN KEY ([fSellerId]) REFERENCES [dbo].[tSeller] ([fId]),
    CONSTRAINT [FK_tMarketShoppingCart_tUser] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'購物車', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'明細唯一識別碼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart', @level2type = N'COLUMN', @level2name = N'fCartItemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'會員/買家 ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart', @level2type = N'COLUMN', @level2name = N'fUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商家編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart', @level2type = N'COLUMN', @level2name = N'fSellerId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品 ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart', @level2type = N'COLUMN', @level2name = N'fProductId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'購買數量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart', @level2type = N'COLUMN', @level2name = N'fQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'加入時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketShoppingCart', @level2type = N'COLUMN', @level2name = N'fCreatedDate';

