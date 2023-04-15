CREATE TABLE [dbo].[userinfo] (
    [Id]           INT          NOT NULL IDENTITY,
    [username]     VARCHAR (50) NULL,
    [userpassword] VARCHAR (50) NULL,
    [idnumber] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

