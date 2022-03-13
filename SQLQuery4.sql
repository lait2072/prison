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
