use [Projet Final Windows]
go
--création des classes
Create Table Animaux(poids int,code_animal int primary key,hauteur int,diete varchar check (diete = 'omnivore'or diete ='carnivore'or diete = 'herbivore')
,couleur varchar(100), Nom varchar, Nom_scientifique varchar, Longevite int)
Create table Reptile(code_animal int foreign key references Animaux(code_animal),temperature_de_sang int,croissance_an int)
create table Oiseau(code_animal int foreign key references Animaux(code_animal),nb_oeuf_an int,longeur_plume int)
create table Mammifere(code_animal int foreign key references Animaux(code_animal),grandeur_poil int, nb_bebe int)
create table Utilisateur(grade varchar check(grade = 'standard'or grade = 'premium'or grade = 'deluxe' or grade = 'origin'),
nom varchar(100), prenom varchar(100), pass varchar(30), code_identification int primary key,age int,date_naiss datetime)
create table Gardien( grade varchar check(grade = 'recruit'or grade = 'expériencé'or grade = 'vétéran' or grade = 'maître'or grade = 'grand_master'or grade = 'dieu'),
nom varchar(100),prenom varchar(100), pass varchar(30), code_identification int primary key,age int,date_naiss datetime)