
CREATE TABLE konsument (
  ID INT ,
  Kürzel CHAR(3) ,
  Passwort VARCHAR(45),
  EMail VARCHAR(45) ,
  PRIMARY KEY (ID) );
  
CREATE TABLE buchungen(
 ID INT, 
 Datum date,
 Betrag double,
 Konsument_fk int,
 art_fk int,
 primary key (ID),
 foreign key(konsument_fk) references konsument(ID),
 foreign key(art_fk) references buchungsart(ID)
 );
 
 create table buchungsart(
 ID int,
 bezeichnung char,
 primary key (ID)
 );
