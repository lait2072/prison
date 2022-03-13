--*****тест count_prisoners*****
select * from Prisoners
select * from Prisons
insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight) values (683696, '2018-03-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5)
select * from Prisoners
select * from Prisons

--*****тест count_prisoners update*****
select * from Prisoners
select * from Prisons
update Prisoners set  The_weight= 120 where The_weight=113.5
select * from Prisoners
select * from Prisons

--*****тест count_prisoners delete*****
select * from Prisoners
select * from Prisons
delete from Prisoners where ID_Z= 683696
select * from Prisoners
select * from Prisons

--*****тест count_place*****
select * from Prisoners
select * from Prisons
insert into Prisoners(ID_Z, Date_visiting, Medical_record, First_name, ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Prisons_name_Prisons, Patronymic, Surname, Sex, Age, City, Height, The_weight) values (884312, '2020-06-04', 1, 'Жирков', 1, 174314 ,'Очаково', 'Артемович', 'Василий', 'Мужской', 32.4, 'Саратов', 143.2, 113.5)
select * from Prisoners
select * from Prisons

--*****тест count_place update*****
select * from Prisoners
select * from Prisons
update Prisoners set The_weight=93.2 where The_weight=113.5
select * from Prisoners
select * from Prisons

--*****тест count_place delete*****
select * from Prisoners
select * from Prisons
delete from Prisoners where ID_Z= 683696
select * from Prisoners
select * from Prisons

--*****тест Next_day_visited*****
select * from Visited
insert into Visited(Medical_record ,Date_visiting_Prisoners, ID_Z, First_name, Patronymic, Surname, Passport_data, Duration_of_the_meeting) values (1,  '2020-06-04', 884312, 'Кучина', 'Сергеевна', 'Ирина', '6512823945', '10 минут')
select * from Visited

--*****тест Next_day_visited update*****
select * from Visited
update Visited set Duration_of_the_meeting='11 минут' where  Duration_of_the_meeting='10 минут'
select * from Visited

--*****тест History_insert*****
select * from Compulsory_work
select * from History
insert into Compulsory_work(ID_W_Private_bussiness, Number_of_bussiness_Private_bussiness, Name_work, Data_start_working, Data_finish_working,Number_of_hours_worked,Alternative_works,Overseer_reviews) values (2, 348174, '', '2019-12-07','2020-03-21',119.3, '','')
select * from Compulsory_work
select * from History

--*****тест History_insert update*****
select * from Compulsory_work
select * from History
update Compulsory_work set Overseer_reviews='fulfills duties very well' 
select * from Compulsory_work
select * from History

--*****тест History_delete*****
select * from Compulsory_work
select * from History
delete from Compulsory_work where Number_of_bussiness_Private_bussiness= 348174
select * from Compulsory_work
select * from History