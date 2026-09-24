CREATE TABLE [dbo].[tFoodMapIngredient]
(
    [fIngredientId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [fName] NVARCHAR(50) NOT NULL, 
    [fIngredientCategoryId] INT NOT NULL
)
