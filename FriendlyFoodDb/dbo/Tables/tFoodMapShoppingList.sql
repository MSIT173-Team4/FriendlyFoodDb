CREATE TABLE [dbo].[tFoodMapShoppingList] (
    [fShoppingListID] INT            IDENTITY (1, 1) NOT NULL,
    [fUserID]         INT            NOT NULL,
    [fListName]       NVARCHAR (100) NOT NULL,
    [fStatus]         VARCHAR (20)   CONSTRAINT [DF_tFoodMapShoppingList_fStatus] DEFAULT ('Draft') NULL,
    [fCreatedTime]    DATETIME2 (0)  CONSTRAINT [DF_tFoodMapShoppingList_fCreatedTime] DEFAULT (sysdatetime()) NOT NULL,
    [fUpdatedTime]    DATETIME2 (0)  NULL,
    CONSTRAINT [PK_tFoodMapShoppingList] PRIMARY KEY CLUSTERED ([fShoppingListID] ASC),
    CONSTRAINT [CK_tFoodMapShoppingList_fStatus] CHECK ([fStatus]='Cancelled' OR [fStatus]='Completed' OR [fStatus]='Planning' OR [fStatus]='Draft'),
    CONSTRAINT [FK_FoodMapShoppingList_User] FOREIGN KEY ([fUserID]) REFERENCES [dbo].[tUser] ([fId])
);

