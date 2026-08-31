CREATE TABLE [dbo].[tFoodMapShoppingListItem] (
    [fShoppingItemID] INT             IDENTITY (1, 1) NOT NULL,
    [fShoppingListID] INT             NOT NULL,
    [fIngredientID]   INT             NOT NULL,
    [fQuantity]       DECIMAL (10, 2) NOT NULL,
    [fUnit]           NVARCHAR (20)   NOT NULL,
    [fIsPurchased]    BIT             CONSTRAINT [DF_ShopptFoodMapShoppingListItem_fIsPurchased] DEFAULT ((0)) NOT NULL,
    [fNote]           NVARCHAR (200)  NULL,
    [fCreatedTime]    DATETIME2 (7)   CONSTRAINT [DF_tFoodMapShoppingListItem_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    [fUpdatedTime]    DATETIME2 (7)   NULL,
    CONSTRAINT [PK_tFoodMapShoppingListItem] PRIMARY KEY CLUSTERED ([fShoppingItemID] ASC),
    CONSTRAINT [CK_tFoodMapShoppingListItem_fQuantity] CHECK ([fQuantity]>(0)),
    CONSTRAINT [FK_tFoodMapShoppingListItem_fShoppingList] FOREIGN KEY ([fShoppingListID]) REFERENCES [dbo].[tFoodMapShoppingList] ([fShoppingListID]) ON DELETE CASCADE
);

