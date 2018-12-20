create table Cauhoi(
	IdCauhoi int(10)  auto_increment not null  primary key,
    Content text,
    LoaiCauhoi int check (LoaiCauhoi =1 or LoaiCauhoi=2)
) ;
select * from Cauhoi;
insert into Cauhoi values (1,'what is this?',1);
insert into Cauhoi value (2,'what is that?',1);
use quiz;
create table DapAn(
	IdDapAn int(10) auto_increment not null,
    IdCauhoi int(10),
    NoidungDapAn text,
    true_or_false int check(true_or_false=0 or true_or_false=1),
    foreign key (IdCauhoi) references Cauhoi(IdCauhoi),
    primary key(IdDapAn,IdCauhoi)
);

create table image(
	IdAnh int(10) auto_increment not null,
    IdCauhoi int(10),
    link_Anh varchar(100),
    foreign key (IdCauhoi) references Cauhoi(IdCauhoi),
    primary key(IdAnh,IdCauhoi)
);

create table Users (
	IdUser int auto_increment not null primary key,
    Tentk varchar(35),
    pass varchar(35),
    email varchar(50),
    add_date date,
    user_level int check(user_level = 1 or user_level = 2)
);
