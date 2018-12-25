create database quiz;

create table tailieu(
	id_tailieu int(10)  auto_increment not null  primary key,
    loai_tailieu int check (loai_tailieu =1 or loai_tailieu=2),
    noidung_tailieu text
    
);



create table Cauhoi(
	IdCauhoi int(10)  auto_increment not null  primary key,
    Content text,
    id_tailieu int(10),
    foreign key (id_tailieu) references tailieu(id_tailieu)
) ;


create table DapAn(
	IdDapAn int(10) auto_increment not null primary key,
    IdCauhoi int(10),
    NoidungDapAn text,
    true_or_false int check(true_or_false=0 or true_or_false=1),
    foreign key (IdCauhoi) references Cauhoi(IdCauhoi)
);

create table Users (
	IdUser int auto_increment not null primary key,
    Tentk varchar(35),
    pass varchar(35),
    email varchar(50),
    add_date date,
    user_level int check(user_level = 1 or user_level = 2)
);


