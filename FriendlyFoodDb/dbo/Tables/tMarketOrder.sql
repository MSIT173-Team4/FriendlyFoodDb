CREATE TABLE [dbo].[tMarketOrder] (
    [fOrderID]             BIGINT          IDENTITY (1, 1) NOT NULL,
    [fOrderNo]             VARCHAR (20)    NOT NULL,
    [fUserId]              INT             NOT NULL,
    [fSellerId]            INT             NOT NULL,
    [fOrderDate]           DATETIME2 (7)   NOT NULL DEFAULT (sysdatetime()),
    [fShippingFee]         DECIMAL (18, 2) NOT NULL,
    [fShippingDiscount]    DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [fProductDiscount]     DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [fTotalAmount]         DECIMAL (18, 2) NOT NULL,
    [fRecipientName]       NVARCHAR (50)   NOT NULL,
    [fRecipientPhone]      VARCHAR (20)    NOT NULL,
    [fShippingAddress]     NVARCHAR (255)  NOT NULL,
    [fShippingMethod]      VARCHAR (20)    NOT NULL,
    [fIsShippingConfirmed] BIT             DEFAULT ((0)) NOT NULL,
    [fOrderStatus]         INT             NOT NULL,
    [fPaymentStatus]       INT             NOT NULL,
    [fShippingStatus]      INT             NOT NULL,
    [fCancellationStatus]  INT             NOT NULL,
    [fReturnStatus]        INT             NOT NULL,
    [fBatchId]             BIGINT          NOT NULL,
    CONSTRAINT [PK_tMarketOrder] PRIMARY KEY CLUSTERED ([fOrderID] ASC),
    CONSTRAINT [FK_tMarketOrder_tMarketCheckoutBatch] FOREIGN KEY ([fBatchId]) REFERENCES [dbo].[tMarketCheckoutBatch] ([fBatchId]),
    CONSTRAINT [FK_tMarketOrder_tSeller] FOREIGN KEY ([fSellerId]) REFERENCES [dbo].[tSeller] ([fId]),
    CONSTRAINT [FK_tMarketOrder_tUser] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [UQ_tMarketOrder_fOrderNo] UNIQUE NONCLUSTERED ([fOrderNo] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單主檔(依賣家分組後的子訂單)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單序號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fOrderNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'會員編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商家編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fSellerId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'原始運費', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fShippingFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'運費折抵金額', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fShippingDiscount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品折抵金額', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fProductDiscount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'應付總金額', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fTotalAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'收件人姓名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fRecipientName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'收件人電話', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fRecipientPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'收件地址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fShippingAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'配送方式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fShippingMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'賣家是否已確認/列印出貨單；0 未確認 1 已確認/已列印', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fIsShippingConfirmed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單狀態；0 待處理 / 1 已成立 / 2 已完成 / 3 已取消', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fOrderStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'付款狀態；0 待付款 / 1 已付款 / 2 待退款 / 3 已退款', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fPaymentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'運送狀態；0 待出貨 / 1 運送中 / 2 已送達 / 3 運送失敗 / 4 退回包裹運送中 / 5 賣家已取回退件', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fShippingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'取消狀態；0 無取消申請 / 1 待回覆 / 2 已取消 / 3 拒絕取消', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fCancellationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'退貨狀態；0 無退貨 / 1 待處理 / 2 已處理', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fReturnStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'批次ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrder', @level2type = N'COLUMN', @level2name = N'fBatchId';

