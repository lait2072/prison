--create database Prison

use Prison

create table Block
(
Chamber varchar(20) primary key,
Number_of_block int not null,
Flor int not null,
Name_of_block varchar(20)
)

create table Housing
(
Number_of_housing int primary key,
Note varchar,
Quantity_of_block int
)

create table The_doctors_consultation
(
ID_D int primary key,
Date_consultation date not null,
Diagnodiagnosis varchar not null,
needble_drag varchar,
recomendation varchar
)

create table Criminal_executive_commission
(
ID_K int primary key,
Decision varchar(20) not null,
Reason text
)

create table Private_bussiness
(
ID_W int not null, 
Number_of_bussiness int not null,
Reason_bussiness varchar,
Sum_of_conflicts int not null,
interaction_with_employees text,
interaction_with_prisoners text
)

alter table Private_bussiness add constraint PK_Private_bussiness primary key (ID_W, Number_of_bussiness)

create table Prisons
(
Prisons_name varchar(20) primary key,
Chamber_Block varchar(20) references Block(Chamber),
Number_of_housing_Housing int references Housing(Number_of_housing),
Remand_prison varchar(20) not null,
medical_military_institution varchar(20) not null,
Mode varchar(20) not null,
quantity_prisoners int not null,
Quantity_place int
)

create table Compulsory_work
(
ID_W_Private_bussiness int not null,
Number_of_bussiness_Private_bussiness int not null,
Name_work varchar not null,
Data_start_working date not null,
Data_finish_working date not null,
Number_of_hours_worked float default 0,
Alternative_works varchar,
Overseer_reviews varchar(200)
)

alter table Compulsory_work add foreign key (ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness) references Private_bussiness (ID_W, Number_of_bussiness)

create table Worker
(
ID_K_Criminal_executive_commission int references Criminal_executive_commission(ID_K),
First_name varchar(20) not null,
Patronymic varchar(20),
Surname varchar(20),
Position varchar(20) not null
)

create table Private_bussiness_commision
(
ID_W_Private_bussiness int not null,
ID_K_Criminal_executive_commission int references Criminal_executive_commission(ID_K),
Number_of_bussiness_Private_bussiness int not null,
Article varchar not null,
Decisions_made varchar not null
)

alter table Private_bussiness_commision add foreign key (ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness) references Private_bussiness (ID_W, Number_of_bussiness)

create table Prisoners
(
ID_Z int not null, --identity (1,1)
Date_visiting date not null,
Medical_record int not null,--identity (1,1), 
First_name varchar(20) not null,
ID_W_Private_bussiness int not null,
Number_of_bussiness_Private_bussiness int not null,
Prisons_name_Prisons varchar(20) references Prisons(Prisons_name),
Patronymic varchar(20) ,
Surname varchar(20) ,
Sex varchar(20) ,
Age float,
City varchar(20) ,
Height float,
The_weight float,
where_sit date,
srok float
)

alter table Prisoners add foreign key (ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness) references Private_bussiness (ID_W, Number_of_bussiness)

alter table Prisoners add constraint PK_prisoners primary key (ID_Z, Date_visiting, Medical_record)

create table Free_time
(
ID_Z_Prisoners int not null,
Date_visiting date not null,
Medical_record int not null,
When_work varchar not null,
Date_first_visited date not null,
Date_last_visited date not null,
Overseer_reviews varchar
)

alter table Free_time add foreign key (ID_Z_Prisoners, Date_visiting, Medical_record) references Prisoners (ID_Z, Date_visiting, Medical_record)

create table Visited
(
Date_visiting_Prisoners date not null,
Medical_record int not null,
ID_Z int not null,
First_name varchar(20) not null,
Patronymic varchar(20),
Surname varchar(20),
Passport_data varchar(20) not null,
Duration_of_the_meeting varchar(20) not null,
Date_next_visites date,
)

alter table Visited add foreign key (ID_Z, Date_visiting_Prisoners, Medical_record) references Prisoners (ID_Z, Date_visiting, Medical_record)

create table Health_status
(
Medical_record_Prisoners int not null,
ID_Z_Prisoners int not null,
Date_visiting_Prisoners date not null,
ID_D_The_doctors_consultation int references The_doctors_consultation(ID_D),
Date_appeal date not null,
neoplasm varchar,
blood_pathology varchar,
stomach_problems varchar,
diseases_of_the_nervous_system varchar,
skin_diseases varchar,
trauma varchar,
eye_diseases varchar,
diseases_of_the_musculoskeletal_system varchar,
respiratory_diseases varchar,
hearing_diseases varchar,
deformations varchar
)

create table History (ID_W_Private_bussiness int not null,Number_of_bussiness_Private_bussiness int not null,  Overseer_reviews varchar(200), CreateAt datetime not null default getdate(),)

alter table History add foreign key (ID_W_Private_bussiness ,Number_of_bussiness_Private_bussiness) references Private_bussiness(ID_W, Number_of_bussiness)

alter table Health_status add foreign key (ID_Z_Prisoners, Date_visiting_Prisoners, Medical_record_Prisoners) references Prisoners (ID_Z, Date_visiting, Medical_record)














insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (1, 1, 1, 'A')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (2, 1, 1, 'A')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (3, 1, 1, 'A')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (4, 1, 2, 'A')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (5, 1, 2, 'A')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (6, 1, 2, 'A')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (7, 2, 1, 'B')
insert into Block(Chamber, Number_of_block, Flor, Name_of_block) values (8, 2, 1, 'B')

insert into Housing(Number_of_housing, Note, Quantity_of_block) values (1, '', 2)

insert into Criminal_executive_commission(ID_K, Decision,Reason) values (1, 'Отказать', 'ст УК РФ 282')

insert into Worker(ID_K_Criminal_executive_commission, First_name, Patronymic, Surname, Position) values (1, 'Скороходов', 'Константинович', 'Илья', 'Генерал')
insert into Worker(ID_K_Criminal_executive_commission, First_name, Patronymic, Surname, Position) values (1, 'Шумков', 'Олегович', 'Даниил', 'Полковник')
insert into Worker(ID_K_Criminal_executive_commission, First_name, Patronymic, Surname, Position) values (1, 'Иванов', 'Иванович', 'Иван', 'Лейтенант')

insert into Private_bussiness(ID_W, Number_of_bussiness, Reason_bussiness, Sum_of_conflicts, interaction_with_employees, interaction_with_prisoners) values (1, 174314, '', 0, '', '')
insert into Private_bussiness(ID_W, Number_of_bussiness, Reason_bussiness, Sum_of_conflicts, interaction_with_employees, interaction_with_prisoners) values (2, 348174, '', 0, '', '')


insert into Prisons(Prisons_name, Chamber_Block, Number_of_housing_Housing, Remand_prison, medical_military_institution, Mode, quantity_prisoners, Quantity_place) values ('Очаково', 1, 1, 'Нет', 'Нет', 'Строгово', 0, 0)

insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight,where_sit,srok) values (174314, '2020-09-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5, '2001-03-15',10)
insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight,where_sit,srok) values (174314, '2020-06-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5, '2001-03-15',10)
insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight,where_sit,srok) values (174314, '2020-03-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5, '2001-03-15',10)
insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight,where_sit,srok) values (174314, '2019-12-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5, '2001-03-15',10)
insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight, where_sit,srok) values (174314, '2019-09-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5, '2001-03-15',10)

insert into Visited(Medical_record ,Date_visiting_Prisoners, ID_Z, First_name, Patronymic, Surname, Passport_data, Duration_of_the_meeting) values (1, '2020-03-04', 174314, 'Пушкарев', 'Павлович', 'Валентин', '7414884365', '15 минут')
insert into Visited(Medical_record ,Date_visiting_Prisoners, ID_Z, First_name, Patronymic, Surname, Passport_data, Duration_of_the_meeting) values (1, '2020-06-04', 174314, 'Пушкарев', 'Павлович', 'Валентин', '7414884365', '13 минут')
insert into Visited(Medical_record ,Date_visiting_Prisoners, ID_Z, First_name, Patronymic, Surname, Passport_data, Duration_of_the_meeting) values (1, '2020-09-04', 174314, 'Кучина', 'Сергеевна', 'Ирина', '6512823945', '10 минут')

insert into Compulsory_work(ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Name_work, Data_start_working, Data_finish_working,Number_of_hours_worked,Alternative_works,Overseer_reviews) values (1, 174314, 'a', '2019-12-07','2020-03-21',119.3, '-','+')
insert into Compulsory_work(ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Name_work, Data_start_working, Data_finish_working,Number_of_hours_worked,Alternative_works,Overseer_reviews) values (2, 348174, 'a', '2019-12-07','2020-03-21',119.3, '-','+')

insert into Criminal_executive_commission(ID_K, Decision,Reason) values (2, 'Отказать', 'ст УК РФ 282')
insert into Worker(ID_K_Criminal_executive_commission, First_name, Patronymic, Surname, Position) values (2, 'Иванов', 'Иванович', 'Иван', 'Лейтенант')
insert into Compulsory_work(ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Name_work, Data_start_working, Data_finish_working,Number_of_hours_worked,Alternative_works,Overseer_reviews) values (2, 348174, 'к', '2019-12-07','2020-03-21',119.3, '','')


--*****подсчет количества заключенных*****
create trigger count_prisoners on Prisoners
After insert, delete, update
as
begin
update Prisons set quantity_prisoners =(select COUNT(DISTINCT ID_Z) from Prisoners);
end

--*****подсчет количества мест*****
create trigger count_place on Prisoners
after insert, delete, update
as
begin 
update Prisons set Quantity_place = (select COUNT(DISTINCT Chamber) from Block)*4 -quantity_prisoners;
end

--*****дата визита*****
create trigger Next_day_visited on Visited
After insert, update
as
begin
update Visited set Date_next_visites = dateadd(month, 3, Date_visiting_Prisoners);
end

--*****триггер создает в таблице историю*****
create trigger History_insert on Compulsory_work
after insert, update
as
insert into History (ID_W_Private_bussiness ,Number_of_bussiness_Private_bussiness, Overseer_reviews)
select ID_W_Private_bussiness ,Number_of_bussiness_Private_bussiness, Overseer_reviews
from INSERTED

create trigger History_delete on Compulsory_work
after delete
as
insert into History (ID_W_Private_bussiness ,Number_of_bussiness_Private_bussiness, Overseer_reviews)
select ID_W_Private_bussiness ,Number_of_bussiness_Private_bussiness, Overseer_reviews
from deleted

insert into Compulsory_work(ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Name_work, Data_start_working, Data_finish_working,Number_of_hours_worked,Alternative_works,Overseer_reviews) values (2, 348174, '', '2019-12-07','2020-03-21',119.3, '','')
