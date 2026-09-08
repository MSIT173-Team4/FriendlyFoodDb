CREATE TABLE [dbo].[tMarketProduct] (
    [fProductID]          INT             IDENTITY (1, 1) NOT NULL,
    [fProductNo]          VARCHAR (20)    NOT NULL,
    [fSellerId]           INT             NOT NULL,
    [fProductsCategoryNo] VARCHAR (50)    NOT NULL,
    [fProductname]        NVARCHAR (100)  NOT NULL,
    [fDescription]        NVARCHAR (MAX)  NULL,
    [fStock]              INT             NOT NULL,
    [fRowVersion]         ROWVERSION      NOT NULL,
    [fPrice]              DECIMAL (18, 2) NOT NULL,
    [fBrandOrOrigin]      NVARCHAR (50)   NULL,
    [fManufacturingDate]  DATE            NULL,
    [fExpirationDate]     DATE            NULL,
    [fProductDate]        DATETIME2 (7)   NOT NULL,
    [fProductStatus]      TINYINT         DEFAULT ((1)) NOT NULL,
    [fReportCount]        INT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tMarketProduct] PRIMARY KEY CLUSTERED ([fProductID] ASC),
    CONSTRAINT [FK_tMarketProduct_tMarketProductCategory] FOREIGN KEY ([fProductsCategoryNo]) REFERENCES [dbo].[tMarketProductCategory] ([fCategoryNo]),
    CONSTRAINT [FK_tMarketProduct_tSeller] FOREIGN KEY ([fSellerId]) REFERENCES [dbo].[tSeller] ([fId]),
    CONSTRAINT [UQ_tMarketProduct_fProductNo] UNIQUE NONCLUSTERED ([fProductNo] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品主檔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品序號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fProductNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商家編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fSellerId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品類別編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fProductsCategoryNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fProductname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品描述', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'數量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fStock';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'樂觀並行鎖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fRowVersion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'單價', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'品牌', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fBrandOrOrigin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'生產日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fManufacturingDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'有效期限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'上架日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fProductDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品狀態；0 審核中 / 1 架上商品 / 2 已售完 / 3 未上架 / 4 已違規', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fProductStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'被檢舉次數', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProduct', @level2type = N'COLUMN', @level2name = N'fReportCount';

