use Prison

--4 просто еще 1 процедура
create procedure NUMBER_OF_Prisoner
@Name_block varchar(35)
as
begin
set nocount on;
SELECT Prisoners.ID_Z as number_emp,
Prisoners.First_name as number_emp,
Prisoners.Patronymic as number_emp,
Prisoners.Surname as number_emp
FROM Prisoners
INNER JOIN Prisons ON Prisoners.Prisons_name_Prisons = Prisons.Prisons_name
WHERE Prisons.Chamber_Block IN
(SELECT Block.Chamber
FROM Block
WHERE Name_of_block = @Name_block);

end

execute NUMBER_OF_Prisoner 'A';

--1 Агрегатная
create procedure count_prisoners_on_block
as
begin
set nocount on;
SELECT Name_of_block,
count (Chamber) as colichestvo 
from Block
group by Name_of_block
end

execute count_prisoners_on_block;


--2 с вложенным запросом
create procedure count_worker_on_work
as
begin
select ID_K,
count(ID_K_Criminal_executive_commission) as SUMMA
from(
select
Criminal_executive_commission.ID_K,
Worker.ID_K_Criminal_executive_commission
from Worker
left join Criminal_executive_commission
on Criminal_executive_commission.ID_K = Worker.ID_K_Criminal_executive_commission
)X
group by Id_K
end

execute count_worker_on_work

--3 insert
create procedure Dobavl_Im
@ID_Z int,
@Date_visiting date,
@medical_recorder int,
@number_P_B int,
@Name varchar(35),
@second_Name varchar(35),
@otchestvo varchar(35),
@sex varchar(35),
@age float,
@weight float,
@height float,
@city varchar(35),
@reason varchar(35),
@Id_W int,
@ID_W_Private_bussiness int,
@Prisons_name_Prisons varchar(35),
@Sum_of_conflicts int,
@where_sit date,
@srok float
as
begin
insert into Private_bussiness(ID_W, Number_of_bussiness, Reason_bussiness, Sum_of_conflicts) values (@Id_W, @number_P_B, @reason, @Sum_of_conflicts) ;
insert into Prisoners (ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight, where_sit,srok)values(@ID_Z,@Date_visiting, @medical_recorder, @Name, @ID_W_Private_bussiness, @number_P_B, @Prisons_name_Prisons, @otchestvo,@second_Name,@sex, @age,@city,@height, @weight, @where_sit, @srok) ;
end
execute Dobavl_Im 4, '2020-04-04', 1, 174314,'a', 'b', 'c', 'man', 24, 194, 194, '1', '3', 4, 4, 'Очаково', 1, '2020-04-07', 3

select * from Prisons
select * from Private_bussiness



--функция 1
CREATE FUNCTION Fnextdate
(
@ID_Z int,
@srok float
)
RETURNS date
AS
BEGIN
declare @date date
SELECT @date = dateadd(year, @srok, where_sit)
FROM Prisoners
WHERE ID_Z = @ID_Z
RETURN @date
END

SELECT DBO.Fnextdate(174314, 10)

--функция 2
CREATE FUNCTION Finicial
(
@NumZ int
)
RETURNS varchar(20)
AS
BEGIN
declare 
@output_str varchar(20),
@Fio varchar(20),
@output_str1 varchar(20)
select @output_str = substring(Patronymic, 0,2)
from Prisoners
select @output_str1 = substring(Surname, 0,2)
from Prisoners
select @Fio = First_name + '.' + @output_str + '.' + @output_str1
from Prisoners
RETURN @Fio
END

SELECT  DBO.Finicial (1)

--функция 3
CREATE FUNCTION Ftime
(
@id int
)
RETURNS varchar(20)
AS
BEGIN
declare @time varchar(20)
SELECT @time = CAST(datepart(hh,CreateAt) AS CHAR(2))+':'
+ CAST(datepart(mi,CreateAt) AS CHAR(2))+':'
+ CAST(datepart(ss,CreateAt) AS CHAR(2))
FROM History where ID_W_Private_bussiness = @id;
RETURN @time
END

SELECT  DBO.Ftime (2)

--функция 4
CREATE FUNCTION Fseason
(
@Ngr int
)
RETURNS varchar(20)
AS
BEGIN
declare @idx int,
@season varchar(20)
select @season = CHOOSE(MONTH(where_sit),'1','1', '1','2','2','2','3','3','3','4','4','4')
FROM Prisoners
where ID_W_Private_bussiness = @Ngr
RETURN @season
END

SELECT DBO.Fseason (1)