CREATE TABLE [dbo].[tMarketOrderDetail] (
    [fOrderDetailsID] INT             IDENTITY (1, 1) NOT NULL,
    [fOrderID]        BIGINT          NOT NULL,
    [fProductID]      INT             NOT NULL,
    [fQuantity]       INT             NOT NULL,
    [fUnitPrice]      DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_tMarketOrderDetail] PRIMARY KEY CLUSTERED ([fOrderDetailsID] ASC),
    CONSTRAINT [FK_tMarketOrderDetail_tMarketOrder] FOREIGN KEY ([fOrderID]) REFERENCES [dbo].[tMarketOrder] ([fOrderID]),
    CONSTRAINT [FK_tMarketOrderDetail_tMarketProduct] FOREIGN KEY ([fProductID]) REFERENCES [dbo].[tMarketProduct] ([fProductID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單明細', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單明細ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDetail', @level2type = N'COLUMN', @level2name = N'fOrderDetailsID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDetail', @level2type = N'COLUMN', @level2name = N'fOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDetail', @level2type = N'COLUMN', @level2name = N'fProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品數量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDetail', @level2type = N'COLUMN', @level2name = N'fQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品單價', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketOrderDetail', @level2type = N'COLUMN', @level2name = N'fUnitPrice';

