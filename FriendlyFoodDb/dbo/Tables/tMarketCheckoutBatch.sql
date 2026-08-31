CREATE TABLE [dbo].[tMarketCheckoutBatch] (
    [fBatchId]        BIGINT          IDENTITY (1, 1) NOT NULL,
    [fBatchNo]        VARCHAR (100)   NOT NULL,
    [fUserId]         INT             NOT NULL,
    [fTotalAmount]    DECIMAL (18, 2) NOT NULL,
    [fPaymentStatus]  INT             NOT NULL,
    [fPaymentMethod]  NVARCHAR (50)   NOT NULL,
    [fPaymentTradeNo] VARCHAR (100)   NULL,
    [fCreatedDate]    DATETIME2 (7)   NOT NULL,
    [fPaidAt]         DATETIME2 (7)   NULL,
    CONSTRAINT [PK_tMarketCheckoutBatch] PRIMARY KEY CLUSTERED ([fBatchId] ASC),
    CONSTRAINT [FK_tMarketCheckoutBatch_tUser] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [UQ_tMarketCheckoutBatch_fBatchNo] UNIQUE NONCLUSTERED ([fBatchNo] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UQ_tMarketCheckoutBatch_fPaymentTradeNo]
    ON [dbo].[tMarketCheckoutBatch]([fPaymentTradeNo] ASC) WHERE ([fPaymentTradeNo] IS NOT NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'結帳批次(對應綠界一次金流交易,底下可包含多張子訂單)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'結帳批次表ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fBatchId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商店端唯一,對應綠界MerchantTradeNo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fBatchNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'買家', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'批次應付總金額', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fTotalAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'付款狀態；0待付款/1已付款/2部分退款/3已退款/4失敗', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fPaymentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'第三方付款方式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fPaymentMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'第三方金流交易序號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fPaymentTradeNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'建立日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fCreatedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'實際完成付款成功時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketCheckoutBatch', @level2type = N'COLUMN', @level2name = N'fPaidAt';

