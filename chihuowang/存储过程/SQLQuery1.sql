use [�Ի���DB]
--��¼
if exists(select * from sysobjects where name='pro_denglu')
 drop proc pro_denglu
 go
 create proc pro_denglu(@name nvarchar(50) ,@mima nvarchar(50) )
 as
   select * from [dbo].[Login]
   where [YHM]=@name  and [MIMA]=@mima
--ע��
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

--��ѯ�����˵���������
go
if exists(select * from sysobjects where name='pro_fabucaidanselectALL')
drop proc pro_fabucaidanselectALL
go
create  proc pro_fabucaidanselectALL
as
select * from [dbo].[fabucaidan],[dbo].[Login]
where [dbo].[fabucaidan].userid=[dbo].[Login].LoginID
--���ݷ����˵���id��ѯ��������
go
if exists(select * from sysobjects where name='pro_fabucaidanselectID')
drop proc pro_fabucaidanselectID
go 
create proc pro_fabucaidanselectID(@id int)
as
select * from [dbo].[fabucaidan],[dbo].[Login]
where  [dbo].[fabucaidan].userid=[dbo].[Login].LoginID
and  [fabucaidanid] = @id 

--�����˵����������
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

--��ʾԭ��
go
if exists(select * from sysobjects where name='pro_yuanchuangselect')
drop proc pro_yuanchuangselect
go
create  proc pro_yuanchuangselect
as
select * from [dbo].[yuanchuang]

--��ʾ����
go
if exists(select * from sysobjects where name='pro_gongyiselect')
drop proc pro_gongyiselect
go
create  proc pro_gongyiselect
as
select * from [dbo].[gongyi]

--��ʾ��ζ
go
if exists(select * from sysobjects where name='pro_koweiselect')
drop proc pro_koweiselect
go
create  proc pro_koweiselect
as
select * from [dbo].[kowei]


--��ʾ�Ѷ�
go
if exists(select * from sysobjects where name='pro_nanduselect')
drop proc pro_nanduselect
go
create  proc pro_nanduselect
as
select * from [dbo].[nandu]

--��ʾ���ʱ��
go
if exists(select * from sysobjects where name='pro_pengrenshijianselect')
drop proc pro_pengrenshijianselect
go
create  proc pro_pengrenshijianselect
as
select * from [dbo].[penrenshijian]

--��ʾ׼��ʱ��
go
if exists(select * from sysobjects where name='pro_zhunbeishijianselect')
drop proc pro_zhunbeishijianselect
go
create  proc pro_zhunbeishijianselect
as
select * from [dbo].[zunbeishijian]

--��ʾ����
go
if exists(select * from sysobjects where name='pro_renshuselect')
drop proc pro_renshuselect
go
create  proc pro_renshuselect
as
select * from [dbo].[renshu]

--��Ҫ�Ҳ��� �б��ѯ���������ݣ�
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipuselect')
drop proc pro_woyaozhaocaipuselect
go
create  proc pro_woyaozhaocaipuselect
as
select * from [dbo].[woyaozhaocaipu]
--��Ҫ�Ҳ��� ���ݲ�ѯ������id��ѯ���ݣ�
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipuselectid')
drop proc pro_woyaozhaocaipuselectid
go
create  proc pro_woyaozhaocaipuselectid(@cpid int)
as
select top 1 * from [dbo].[woyaozhaocaipu],[dbo].[Login],[dbo].[pinglun]
where [dbo].[woyaozhaocaipu].useid=[dbo].[Login].LoginID and [dbo].[woyaozhaocaipu].caipuID= [dbo].[pinglun].caipuid and [dbo].[woyaozhaocaipu].[caipuID]=@cpid


--��Ҫ�Ҳ��� ���۲�ѯ������id��ѯ���ݣ�
go
if exists( select * from sysobjects where name='pro_woyaozhaocaipupinglunselectid')
drop proc pro_woyaozhaocaipupinglunselectid
go
create  proc pro_woyaozhaocaipupinglunselectid(@cpid int)
as
select * from [dbo].[woyaozhaocaipu],[dbo].[Login],[dbo].[pinglun]
where [dbo].[woyaozhaocaipu].caipuID = [dbo].[pinglun].caipuid and [dbo].[pinglun].userid=[dbo].[Login].LoginID and    [dbo].[woyaozhaocaipu].[caipuID]=@cpid


--��Ҫ�Ҳ��� ��ҳ�б��ѯ����ҳ��
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



--fabucaipu ��ҳ�б��ѯ����ҳ��
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


--�������ۡ����������
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


--��Ҫ�Ҳ��ס������
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
           

--�������ģ����ѯ�������˵�
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

--�������ģ����ѯ����Ҫ�Ҳ���
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
--���а������
if exists(select * from sysobjects where name='pro_paihangbangselect')
drop proc pro_paihangbangselect
go
create  proc pro_paihangbangselect
as
select top 5 * from [dbo].[paihangbang],[dbo].[Login]
where [dbo].[paihangbang].[useid]=[dbo].[Login].LoginID
order by [Fenshu] desc