CREATE TABLE [dbo].[tMarketProductCategory] (
    [fCategoryID]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [fCategoryNo]       VARCHAR (50)  NOT NULL,
    [fCategoriesName]   NVARCHAR (50) NOT NULL,
    [fParentCategoryId] BIGINT        NULL,
    CONSTRAINT [PK_tMarketProductsCategory] PRIMARY KEY CLUSTERED ([fCategoryID] ASC),
    CONSTRAINT [FK_tMarketProductCategory_tMarketProductCategory] FOREIGN KEY ([fParentCategoryId]) REFERENCES [dbo].[tMarketProductCategory] ([fCategoryID]),
    CONSTRAINT [UQ_tMarketProductCategory_fCategoryNo] UNIQUE NONCLUSTERED ([fCategoryNo] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品分類(自我參照,支援多層)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品類別序號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductCategory', @level2type = N'COLUMN', @level2name = N'fCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品類別編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductCategory', @level2type = N'COLUMN', @level2name = N'fCategoryNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品類別名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductCategory', @level2type = N'COLUMN', @level2name = N'fCategoriesName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'父類別代號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductCategory', @level2type = N'COLUMN', @level2name = N'fParentCategoryId';

