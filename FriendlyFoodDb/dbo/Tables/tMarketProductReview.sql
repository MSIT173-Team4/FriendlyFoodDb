CREATE TABLE [dbo].[tMarketProductReview] (
    [fReviewID]       INT            IDENTITY (1, 1) NOT NULL,
    [fOrderDetailsID] INT            NOT NULL,
    [fProductID]      INT            NOT NULL,
    [fUserId]         INT            NOT NULL,
    [fRating]         TINYINT        NOT NULL,
    [fComment]        NVARCHAR (MAX) NULL,
    [fCreatedDate]    DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_tMarketProductReviews] PRIMARY KEY CLUSTERED ([fReviewID] ASC),
    CONSTRAINT [CK_tMarketProductReview_fRating] CHECK ([fRating]>=(1) AND [fRating]<=(5)),
    CONSTRAINT [FK_tMarketProductReview_tMarketOrderDetail] FOREIGN KEY ([fOrderDetailsID]) REFERENCES [dbo].[tMarketOrderDetail] ([fOrderDetailsID]),
    CONSTRAINT [FK_tMarketProductReview_tMarketProduct] FOREIGN KEY ([fProductID]) REFERENCES [dbo].[tMarketProduct] ([fProductID]),
    CONSTRAINT [FK_tMarketProductReview_tUser] FOREIGN KEY ([fUserId]) REFERENCES [dbo].[tUser] ([fId]),
    CONSTRAINT [UQ_tMarketProductReview_fOrderDetailsID] UNIQUE NONCLUSTERED ([fOrderDetailsID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'商品評論', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'評論ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fReviewID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訂單明細ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fOrderDetailsID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'產品編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'會員編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'評分', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fRating';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'評論內容', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'評論時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tMarketProductReview', @level2type = N'COLUMN', @level2name = N'fCreatedDate';

