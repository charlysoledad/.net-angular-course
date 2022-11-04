IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [users] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(50) NOT NULL,
    [LastName] nvarchar(max) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [Password] nvarchar(max) NOT NULL,
    [createdBy] nvarchar(max) NULL,
    [updatedBy] nvarchar(max) NULL,
    [deletedBy] nvarchar(max) NULL,
    [createdAt] datetime2 NOT NULL,
    [updatedAt] datetime2 NULL,
    [deletedAt] datetime2 NOT NULL,
    [isDeleted] bit NOT NULL,
    CONSTRAINT [PK_users] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221103211649_Create Users table', N'6.0.10');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [courses] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [ShortDescription] nvarchar(280) NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [PublicObjective] nvarchar(max) NOT NULL,
    [Objectives] nvarchar(max) NOT NULL,
    [Requirements] nvarchar(max) NOT NULL,
    [Level] int NOT NULL,
    [createdBy] nvarchar(max) NULL,
    [updatedBy] nvarchar(max) NULL,
    [deletedBy] nvarchar(max) NULL,
    [createdAt] datetime2 NOT NULL,
    [updatedAt] datetime2 NULL,
    [deletedAt] datetime2 NOT NULL,
    [isDeleted] bit NOT NULL,
    CONSTRAINT [PK_courses] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221103235430_Create Course table', N'6.0.10');
GO

COMMIT;
GO

