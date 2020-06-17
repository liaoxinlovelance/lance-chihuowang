use [吃货网DB]
--登录
if exists(select * from sysobjects where name='pro_denglu')
 drop proc pro_denglu
 go
 create proc pro_denglu(@name nvarchar(50) ,@mima nvarchar(50) )
 as
   select * from [dbo].[Login]
   where [YHM]=@name  and [MIMA]=@mima
--注册
go
if exists(select * from sysobjects where name='pro_zhuce')
 drop proc pro_zhuce
 go
 create proc pro_zhuce(@name nvarchar(50) ,@mima nvarchar(50) ,@youxiang nvarchar(50)
 ,@tupian nvarchar(50),@time date
 )
 as
 

INSERT INTO [dbo].[Login]
           ([YHM]
           ,[MIMA]
           ,[YouXiang]
           ,[userpic]
           ,[zhuceshijian])
    
     VALUES
           (@name
           ,@mima
           ,@youxiang
		   ,@tupian
           ,@time)

--查询发布菜单所有内容
go
if exists(select * from sysobjects where name='pro_fabucaidanselectALL')
drop proc pro_fabucaidanselectALL
go
create  proc pro_fabucaidanselectALL
as
select * from [dbo].[fabucaidan],[dbo].[Login]
where [dbo].[fabucaidan].userid=[dbo].[Login].LoginID
--根据发布菜单的id查询所有内容
go
if exists(select * from sysobjects where name='pro_fabucaidanselectID')
drop proc pro_fabucaidanselectID
go 
create proc pro_fabucaidanselectID(@id int)
as
select * from [dbo].[fabucaidan],[dbo].[Login]
where  [dbo].[fabucaidan].userid=[dbo].[Login].LoginID
and  [fabucaidanid] = @id 

--发布菜单的数据添加
go 
if exists(select * from sysobjects where name='pro_fabucaidanADD')
drop proc pro_fabucaidanADD
go
create proc pro_fabucaidanADD(
@yuanchuang nvarchar(10),
@biaoti nvarchar(50),
@gongyi int,
@kowei int,
@nandu int,
@zunbeishijian int,
@penrenshijian  int,
@renshu int,
@chengpintupian nvarchar(50),
@fenxiangxinqin nvarchar(max),
@zhuliaomingcheng nvarchar(100),
@zhuliaoyongliang nvarchar(100),
@fuliaomingcheng nvarchar(100),
@fuliaoyongliang nvarchar(100),
@buzoutupian  nvarchar(300),
@buzoumiaosu  nvarchar(max),
@zuizhongxiaoguotu nvarchar(300),
@fabushijian nvarchar(300),
@caiputitle nvarchar(100),
@userid int,
@renqi int
)
as

INSERT INTO [dbo].[fabucaidan]
VALUES
           ( @yuanchuang
           ,@biaoti
           ,@gongyi
           ,@kowei
           ,@nandu
           ,@zunbeishijian 
           ,@penrenshijian
           ,@renshu
           ,@chengpintupian
           ,@fenxiangxinqin
           ,@zhuliaomingcheng
           ,@zhuliaoyongliang
           ,@fuliaomingcheng
           ,@fuliaoyongliang
           ,@buzoutupian
           ,@buzoumiaosu
           ,@zuizhongxiaoguotu
           ,@fabushijian
           ,@caiputitle
           ,@userid
           ,@renqi)

--显示原创
go
if exists(select * from sysobjects where name='pro_yuanchuangselect')
drop proc pro_yuanchuangselect
go
create  proc pro_yuanchuangselect
as
select * from [dbo].[yuanchuang]

--显示工艺
go
if exists(select * from sysobjects where name='pro_gongyiselect')
drop proc pro_gongyiselect
go
create  proc pro_gongyiselect
as
select * from [dbo].[gongyi]

--显示口味
go
if exists(select * from sysobjects where name='pro_koweiselect')
drop proc pro_koweiselect
go
create  proc pro_koweiselect
as
select * from [dbo].[kowei]


--显示难度
go
if exists(select * from sysobjects where name='pro_nanduselect')
drop proc pro_nanduselect
go
create  proc pro_nanduselect
as
select * from [dbo].[nandu]

--显示烹饪时间
go
if exists(select * from sysobjects where name='pro_pengrenshijianselect')
drop proc pro_pengrenshijianselect
go
create  proc pro_pengrenshijianselect
as
select * from [dbo].[penrenshijian]

--显示准备时间
go
if exists(select * from sysobjects where name='pro_zhunbeishijianselect')
drop proc pro_zhunbeishijianselect
go
create  proc pro_zhunbeishijianselect
as
select * from [dbo].[zunbeishijian]

--显示人数
go
if exists(select * from sysobjects where name='pro_renshuselect')
drop proc pro_renshuselect
go
create  proc pro_renshuselect
as
select * from [dbo].[renshu]

--我要找菜谱 列表查询（所有内容）
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipuselect')
drop proc pro_woyaozhaocaipuselect
go
create  proc pro_woyaozhaocaipuselect
as
select * from [dbo].[woyaozhaocaipu]
--我要找菜谱 内容查询（根据id查询内容）
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipuselectid')
drop proc pro_woyaozhaocaipuselectid
go
create  proc pro_woyaozhaocaipuselectid(@cpid int)
as
select top 1 * from [dbo].[woyaozhaocaipu],[dbo].[Login],[dbo].[pinglun]
where [dbo].[woyaozhaocaipu].useid=[dbo].[Login].LoginID and [dbo].[woyaozhaocaipu].caipuID= [dbo].[pinglun].caipuid and [dbo].[woyaozhaocaipu].[caipuID]=@cpid


--我要找菜谱 评论查询（根据id查询内容）
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipupinglunselectid')
drop proc pro_woyaozhaocaipupinglunselectid
go
create  proc pro_woyaozhaocaipupinglunselectid(@cpid int)
as
select * from [dbo].[woyaozhaocaipu],[dbo].[Login],[dbo].[pinglun]
where [dbo].[woyaozhaocaipu].caipuID = [dbo].[pinglun].caipuid and [dbo].[pinglun].userid=[dbo].[Login].LoginID and    [dbo].[woyaozhaocaipu].[caipuID]=@cpid


--我要找菜谱 分页列表查询（分页）
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipufenyeselect')
drop proc pro_woyaozhaocaipufenyeselect
go
create  proc pro_woyaozhaocaipufenyeselect(
@page int,
@pagehang int,
@count int output
)
as
select top (@pagehang)  * from [dbo].[woyaozhaocaipu],[dbo].[Login]
where [dbo].[woyaozhaocaipu].useid=[dbo].[Login].LoginID and [caipuID] not in(select  top ((@page-1)*@pagehang) [caipuID] from [dbo].[woyaozhaocaipu]) 

select @count=count(*) from [dbo].[woyaozhaocaipu],[dbo].[Login]
where [dbo].[woyaozhaocaipu].useid=[dbo].[Login].LoginID



--fabucaipu 分页列表查询（分页）
go
if exists( select * from sysobjects where name='pro_fabucaipufenyeselect')
drop proc pro_fabucaipufenyeselect
go
create  proc pro_fabucaipufenyeselect(
@page int,
@pagehang int,
@count int output
)
as
select top (@pagehang)  * from [dbo].[fabucaidan],[dbo].[Login]
where [dbo].[fabucaidan].userid=[dbo].[Login].LoginID and [fabucaidanid] not in(select  top ((@page-1)*@pagehang) [fabucaidanid] from [dbo].[fabucaidan]) 

select @count=count(*) from [dbo].[fabucaidan],[dbo].[Login]
where [dbo].[fabucaidan].userid=[dbo].[Login].LoginID


--发布评论——添加语序
go
if exists(select * from sysobjects where name='pro_fabupinglun_tianjia')
drop proc pro_fabupinglun_tianjia
go
create proc pro_fabupinglun_tianjia(

@pinglunneirong nvarchar(100),
@caipuid int,
@userid int,
@pinglunshijian datetime
)
as
insert into [dbo].[pinglun]
values(@pinglunneirong,@caipuid,@userid,@pinglunshijian)


--我要找菜谱——添加
go
if exists(select * from sysobjects where name='pro_woyaozhaocaipu_tianjia')
drop proc pro_woyaozhaocaipu_tianjia
go
create proc pro_woyaozhaocaipu_tianjia(
@Title nvarchar(50),
@neirong nvarchar(100),
@fabutupian nvarchar(50),
@fabutime datetime,
@useid int
)
as
INSERT INTO [dbo].[woyaozhaocaipu]
           ([Title]
           ,[neirong]
           ,[useid]

           --,[liulanliang]

           ,[fabutime]

           --,[zhichi]

           --,[huifu]
           ,[fabutupian]
           --,[huifutupian]
           --,[fangdui]
		   )
     VALUES(@Title,@neirong,@useid,@fabutime,@fabutupian)
           

--搜索框的模糊查询，发布菜单
go
if exists(select * from sysobjects where name='pro_mohuchaxun_fabucaidan')
drop proc pro_mohuchaxun_fabucaidan
go
create proc pro_mohuchaxun_fabucaidan(
@name nvarchar(20)

)
as
select * from [dbo].[fabucaidan],[dbo].[Login]
where [dbo].[fabucaidan].userid=[dbo].[Login].LoginID and [dbo].[fabucaidan].biaoti like'%'+@name+'%'

--搜索框的模糊查询，我要找菜谱
go

if exists(select * from sysobjects where name='pro_mohuchaxun_wyzcp')
drop proc pro_mohuchaxun_wyzcp
go
create proc pro_mohuchaxun_wyzcp(@name nvarchar(20))
as
select * from[dbo].[woyaozhaocaipu],[dbo].[Login]
where [dbo].[woyaozhaocaipu].useid=[dbo].[Login].LoginID
and [dbo].[woyaozhaocaipu].Title like'%'+@name+'%'

go
--select * from [dbo].[Login]
--select * from [dbo].[fabucaidan]
--排行榜的排名
if exists(select * from sysobjects where name='pro_paihangbangselect')
drop proc pro_paihangbangselect
go
create  proc pro_paihangbangselect
as
select top 5 * from [dbo].[paihangbang],[dbo].[Login]
where [dbo].[paihangbang].[useid]=[dbo].[Login].LoginID
order by [Fenshu] desc