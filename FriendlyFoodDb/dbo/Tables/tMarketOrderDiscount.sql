CREATE TABLE [dbo].[tMarketOrderDiscount] (
    [fOrderDiscountId] INT             IDENTITY (1, 1) NOT NULL,
    [fOrderID]         BIGINT          NOT NULL,
    [fCouponId]        INT             NOT NULL,
    [fDiscountName]    NVARCHAR (100)  NOT NULL,
    [fDiscountScope]   VARCHAR (20)    NOT NULL,
    [fDiscountType]    NVARCHAR (20)   NOT NULL,
    [fAppliedAmount]   DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_tMarketOrderDiscounts] PRIMARY KEY CLUSTERED ([fOrderDiscountId] ASC),
    CONSTRAINT [FK_tMarketOrderDiscount_tMarketCoupon] FOREIGN KEY ([fCouponId]) REFERENCES [dbo].[tMarketCoupon] ([fCouponId]),
    CONSTRAINT [FK_tMarketOrderDiscount_tMarketOrder] FOREIGN KEY ([fOrderID]) REFERENCES [dbo].[tMarketOrder] ([fOrderID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單折扣快照(結帳當下優惠券套用紀錄)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'明細 PK', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fOrderDiscountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單 ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'優惠券 ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fCouponId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'活動名稱快照', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fDiscountName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'活動適用範圍快照', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fDiscountScope';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'折扣類型快照', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fDiscountType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'該次優惠實際折抵金額', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDiscount', @level2type = N'COLUMN', @level2name = N'fAppliedAmount';

