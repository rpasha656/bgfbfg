CREATE TABLE [dbo].[SubCategory] (
    [Id]              INT         NOT NULL IDENTITY(1, 1),
    [Name]            VARCHAR(100) NOT NULL,
    [Description]     VARCHAR(255)        NULL,
    [CategoryId] INT         NOT NULL,
	    [CreatedBy] VARCHAR(100) NOT NULL, 
    [LastUpdated] DATE NOT NULL, 
    [IsActive] BIT NOT NULL DEFAULT 1
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DocumentName_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
);


