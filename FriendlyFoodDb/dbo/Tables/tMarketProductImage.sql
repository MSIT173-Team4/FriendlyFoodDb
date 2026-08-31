CREATE TABLE [dbo].[tMarketProductImage] (
    [fProductImageID] INT            IDENTITY (1, 1) NOT NULL,
    [fProductID]      INT            NOT NULL,
    [fImageUrl]       NVARCHAR (255) NOT NULL,
    [fSortOrder]      SMALLINT       NOT NULL,
    [fCreatedDate]    DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_tMarketProductImage] PRIMARY KEY CLUSTERED ([fProductImageID] ASC),
    CONSTRAINT [FK_tMarketProductImage_tMarketProduct] FOREIGN KEY ([fProductID]) REFERENCES [dbo].[tMarketProduct] ([fProductID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品圖片', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductImage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'圖片ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductImage', @level2type = N'COLUMN', @level2name = N'fProductImageID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductImage', @level2type = N'COLUMN', @level2name = N'fProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'圖片網址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductImage', @level2type = N'COLUMN', @level2name = N'fImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'排序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductImage', @level2type = N'COLUMN', @level2name = N'fSortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'建立日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductImage', @level2type = N'COLUMN', @level2name = N'fCreatedDate';

