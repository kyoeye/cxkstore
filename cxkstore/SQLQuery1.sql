/*创建触发器让订单号包含时间并自增*/
go
create trigger tri_ddxinxi_ddid
on DDxinxi after insert
as
begin
    update DDxinxi set userid = 'DD' + convert( int,ddtime)+userid
    where userid in (select userid from inserted)
end
/*删除外键*/
alter table dbo.GWCtable drop constraint FK_GWCtable_ToUserdb

/*
    CONSTRAINT [FK_GWCtable_ToUserdb] FOREIGN KEY ([userid]) REFERENCES [dbo].[Userdb] ([userid]),
    CONSTRAINT [FK_GWCtable_ToPhonexinxi] FOREIGN KEY ([phonenum]) REFERENCES [dbo].[Phonexinxi] ([phonenum])

	    CONSTRAINT [FK_DDxinxi_ToPhonexinxi] FOREIGN KEY ([phonenum]) REFERENCES [dbo].[Phonexinxi] ([phonenum]),
    CONSTRAINT [FK_DDxinxi_ToUserdb] FOREIGN KEY ([userid]) REFERENCES [dbo].[Userdb] ([userid])

    CONSTRAINT [FK_Phonexinxi_ToGYSxinxi] FOREIGN KEY ([gysid]) REFERENCES [dbo].[GYSxinxi] ([gysid])
    FOREIGN KEY ([phoneid]) REFERENCES [dbo].[Phonedb] ([phoneId]),
	*/