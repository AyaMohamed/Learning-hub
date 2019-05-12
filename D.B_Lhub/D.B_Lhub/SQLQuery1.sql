-----------------------------TABLE OF CATEGORIES-------------------------
Create Table category_lhub
(
  category_id varchar(50) PRIMARY KEY ,
 category_name varchar(50), 
);

insert into category_lhub (category_id ,category_name)
values ('cid_1','Network'),
('cid_2','OS'),
('cid_3','EMBEDDED'),
('cid_4','ISTQB');

-----------------------------CREATE USER TABLES-----------------------
Create Table USER_lhub
(
  USER_id varchar(50) PRIMARY KEY ,
  USER_name varchar(50),
   USER_Email varchar(50), 
  USER_password varchar(50)
);
insert into USER_lhub (USER_id ,USER_name,USER_Email,USER_password)
values ('USERID_1','wafaa','wafaa.ezzelarab@gmail.com','123'),
('USERID_2','farah','farahalamahmed@yahoo.com','345'),
('USERID_3','aya','aya@yahoo.com','521'),
('USERID_4','azmy','azmy@gmail.com','987');

-----------------------------CREATE Admin TABLES---------------
Create Table Admin_lhub
(
   Admin_name varchar(50), 
    Admin_Email varchar(50),
   Admin_password varchar(50)
 
);

insert into Admin_lhub (Admin_name,Admin_Email,Admin_password)
values ('wafaa','wafaa.ezzelarab@gmail.com','123')



-----------------------------CREATE Articles TABLES---------------
Create Table Article_lhub
(
  Article_ID varchar(50) PRIMARY KEY , 
    Article_text varchar(50),
	Article_video varchar(50),
	Article_Record varchar(50)
 
);

insert into Article_lhub (Article_ID ,Article_text,Article_video,Article_Record)
values ('Article_ID_1','Introduction to Embedded','','') ,
('Article_ID_2','Introduction to ISTQB','','');


-----------------------------CREATE Follow Category TABLES---------------
Create Table User_Follow_Category_lhub
(
  Article_ID varchar(50) ,
    USER_id varchar(50) 
  
 
);

insert into User_Follow_Category_lhub (Article_ID ,USER_id)
values ('Article_ID_1','USERID_1'),
('Article_ID_2','USERID_2');
-------------------------------------------------
