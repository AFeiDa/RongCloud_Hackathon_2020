if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ChatRoom]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ChatRoom]
GO

CREATE TABLE [dbo].[ChatRoom] (
	[cid] [char] (16) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[title] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[intro] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[announce] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[owner] [char] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[maxUser] [int] NULL ,
	[intervals] [int] NULL ,
	[vrtype] [char] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[vrvalue] [char] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [int] NULL ,
	[inputTime] [datetime] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ChatRoom] WITH NOCHECK ADD 
	CONSTRAINT [PK_ChatRoom] PRIMARY KEY  CLUSTERED 
	(
		[cid]
	)  ON [PRIMARY] 
GO

