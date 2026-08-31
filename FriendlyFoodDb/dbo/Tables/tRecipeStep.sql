CREATE TABLE [dbo].[tRecipeStep] (
    [fStepId]       INT            IDENTITY (1, 1) NOT NULL,
    [fRecipeId]     INT            NOT NULL,
    [fStepNumber]   SMALLINT       NOT NULL,
    [fInstruction]  NVARCHAR (MAX) NOT NULL,
    [fImageUrl]     NVARCHAR (500) NULL,
    [fTimerSeconds] INT            NOT NULL,
    CONSTRAINT [PK_tRecipeStep] PRIMARY KEY CLUSTERED ([fStepId] ASC)
);

