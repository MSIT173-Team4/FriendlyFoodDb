CREATE TABLE [dbo].[tMarketCoupon] (
    [fCouponId]          INT             IDENTITY (1, 1) NOT NULL,
    [fSellerId]          INT             NULL,
    [fName]              NVARCHAR (100)  NOT NULL,
    [fCode]              VARCHAR (20)    NULL,
    [fScopeType]         VARCHAR (20)    NOT NULL,
    [fDiscountType]      VARCHAR (20)    NOT NULL,
    [fDiscountValue]     DECIMAL (18, 2) NOT NULL,
    [fMinPurchaseAmount] DECIMAL (18, 2) NULL,
    [fMaxDiscountAmount] DECIMAL (18, 2) NULL,
    [fTotalLimit]        INT             NULL,
    [fUsedCount]         INT             DEFAULT ((0)) NOT NULL,
    [fStartDate]         DATETIME2 (7)   NOT NULL,
    [fEndDate]           DATETIME2 (7)   NULL,
    [fIsActive]          BIT             NOT NULL,
    CONSTRAINT [PK_tMarketCoupon] PRIMARY KEY CLUSTERED ([fCouponId] ASC),
    CONSTRAINT [FK_tMarketCoupon_tSeller] FOREIGN KEY ([fSellerId]) REFERENCES [dbo].[tSeller] ([fId])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UQ_tMarketCoupon_fCode]
    ON [dbo].[tMarketCoupon]([fCode] ASC) WHERE ([fCode] IS NOT NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'優惠券', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'折價卷編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fCouponId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商家編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fSellerId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'活動名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'優惠碼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'適用範圍', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fScopeType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'折抵類型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fDiscountType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'比例折抵值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fDiscountValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'最低消費門檻', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fMinPurchaseAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'打折時的折抵上限（如最多折 $500）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fMaxDiscountAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'發行數量限制', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fTotalLimit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'已使用數量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fUsedCount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'活動開始日', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'活動結束日', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'優惠卷狀態', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCoupon', @level2type = N'COLUMN', @level2name = N'fIsActive';

