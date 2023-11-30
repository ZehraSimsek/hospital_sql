CREATE DATABASE [hastane]

USE [hastane]

CREATE TABLE dbo.hasta(
	HastaId int not null ,
	HastaTc nvarchar(11) not null ,
	HastaAd varchar(50) not null ,
	HastaSoyad varchar(50) not null ,
	DogumTarihi date not null ,
	Cinsiyet char(1) not null ,
	refakatciId int not null ,
	odaNo varchar(5) not null ,
	HastaBId int not null 
	CONSTRAINT PK_hasta PRIMARY KEY CLUSTERED (HastaId ASC)
) 

CREATE TABLE dbo.hastaBilgileri(
	HastaBId int not null ,
	HastaAdres text not null ,
	HastaCepTel nvarchar(12) not null ,
	HastaEvTel nvarchar(11) null ,
	CONSTRAINT PK_hastaBilgileri PRIMARY KEY (HastaBId ASC)
)

CREATE TABLE dbo.refakatci(
	refakatciId int not null,
	refakatciTc nvarchar(11) not null ,
	yakinlik int not null , --kaçýncý dereceden olduðunu yazacak 1. 2. vs
	refakatciTel nvarchar(12) not null ,
	refakatciEvTel nvarchar(11) null ,
	CONSTRAINT PK_refakatci PRIMARY KEY (refakatciId ASC)
) 

CREATE TABLE dbo.doktor(
	DoktorId int not null ,
	DoktorAd varchar(50) not null ,
	DoktorSoyad varchar(50) not null ,
	BransKod nvarchar(25) not null ,
	CONSTRAINT PK_doktor PRIMARY KEY (DoktorId ASC)
)

CREATE TABLE dbo.brans(
	BransKod nvarchar(25) not null ,
	Brans varchar(50) not null ,
	CONSTRAINT PK_brans PRIMARY KEY (BransKod ASC)
)

CREATE TABLE dbo.hemsire(
	HemsireId int not null ,
	HemsireAd varchar(50) not null ,
	HemsireSoyad varchar(50) not null ,
	BolumId nvarchar(25) not null ,
	NobetId int not null ,
	CONSTRAINT PK_hemsire PRIMARY KEY (HemsireId ASC)
)

CREATE TABLE dbo.bolum(
	BolumId nvarchar(25) not null ,
	BolumAd varchar(50) not null ,
	CONSTRAINT PK_bolum PRIMARY KEY (BolumId ASC)
) 

CREATE TABLE dbo.nobet(
	NobetId int not null ,
	Baslangic time not null ,
	Bitis time not null ,
	CONSTRAINT PK_nobet PRIMARY KEY (NobetId ASC)
) 

CREATE TABLE dbo.oda(
	odaNo varchar(5) not null ,
	HemsireId int not null ,
	mevcutYatak int not null ,
	CONSTRAINT PK_oda PRIMARY KEY (odaNo ASC)
)

CREATE TABLE dbo.recete(
	receteNo nvarchar(3) not null ,
	HastaId int not null ,
	DoktorId int not null ,
	CONSTRAINT PK_recete PRIMARY KEY (receteNo ASC)
)

CREATE TABLE dbo.ilac(
	BarkodNo nvarchar(20) not null ,
	ilacAd varchar(25) not null , 
	receteNo nvarchar(3) not null ,
	CONSTRAINT PK_ilac PRIMARY KEY (BarkodNo ASC)
)

INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo , HastaBId) 
VALUES ('9513' , '45832441720' , 'Hava' , 'Tunc' , '1994-01-01' , 'K' , '2' , 'NEF0' , '9513')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('9138' , '52179886534' , 'Dilara' , 'Turker' , '2006-01-02' , 'K' , '10' , 'KBB6' , '9138')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('8333' , '50726381686' , 'Sara' , 'Oz' , '1998-04-04' , 'K' , '3' , 'NEF0' , '8333')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('8334' , '60559916146' , 'Eymen' , 'Saltuk' , '2007-05-13' , 'E' , '14' , 'GH5' , '8334')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('1211' , '21545970160' , 'Ezel' , 'Tekis' , '1984-01-02' , 'E' , '48' , 'IH8' , '1211')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('1234' , '15574399610' , 'Beytur' , 'Tarakci' , '1993-05-13' , 'E' , '35' , 'KBB6' , '1234')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('9835' , '89163412318' , 'Melisa' , 'Filiz' , '1994-01-01' , 'K' , '70' ,  'KAR1' , '9835')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('7021' , '15248083944' , 'Irmak' , 'Bozdag' , '2008-08-08' , 'K' , '61' , 'IH8' ,'7021')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('2761' , '27237281866' , 'Yusa' , 'Keskin' , '2019-07-05' , 'E' , '74' , 'GH5' , '2761')
INSERT dbo.hasta (HastaId , HastaTc , HastaAd , HastaSoyad , DogumTarihi , Cinsiyet , refakatciId , odaNo ,HastaBId) 
VALUES ('2216' , '77473557522' , 'Atilla' , 'Serin' , '2018-08-09' , 'E' , '84' , 'IH8' , '2216')

INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('9513' , 'Susam Sokak No 117' , '905326453579' , '' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('9138' , 'Hilal Sokak No 75' , '905338133381' , '02128133381' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('8333' , 'Elma Sokak No 180' , '905361410053' , '02121410053' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('8334' , 'Veysel Sokak No 230' , '905303875420' , '' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('1211' , 'Cumhuriyet Sokak No 11' , '905378752575' , '02128752575' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('1234' , 'Kayip Sokak No 90' , '905304001252' , '' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('9835' , 'Golge Sokak No 72' , '905357658936' , '02127658936' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('7021' , 'Sezen Sokak No 53' , '905388666441' , '' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('2761' , 'Kara Sokak No 58' , '905308299700' , '' )
INSERT dbo.hastaBilgileri (HastaBId , HastaAdres , HastaCepTel , HastaEvTel)
VALUES ('2216' , 'Hilal Sokak No 55' , '905325151816' , '02125151816' )

INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('2' , '38946541998' , '1' , '905327694722' , '02127694722')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('10' , '17550967684' , '2' , '905771103062' , '02121103062')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('3' , '44785689630' , '1' , '905420559305' , '')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('14' , '25797129192' , '1' , '905972660388' , '02122660388')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('48' , '33022996600' , '3' , '905204219698' , '')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('35' , '40324202018' , '2' , '905330298556' , '02120298556')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('70' , '69319114396' , '2' , '905856886283' , '')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('61' , '43156696482' , '3' , '905470044799' , '')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('74' , '95906184800' , '1' , '905058572681' , '02128572681')
INSERT dbo.refakatci (refakatciId , refakatciTc , yakinlik , refakatciTel , refakatciEvTel)
VALUES ('84' , '99701887874' , '2' , '905569293963' , '')

INSERT dbo.doktor (DoktorId , DoktorAd , DoktorSoyad , BransKod)
VALUES ('0662' , 'Demet' , 'Sarac' , 'GH2900')
INSERT dbo.doktor (DoktorId , DoktorAd , DoktorSoyad , BransKod)
VALUES ('1799' , 'Zelal' , 'Madak' , 'IH1000')
INSERT dbo.doktor (DoktorId , DoktorAd , DoktorSoyad , BransKod)
VALUES ('9916' , 'Vasfiye' , 'Karagollu' , 'KBB2800')
INSERT dbo.doktor (DoktorId , DoktorAd , DoktorSoyad , BransKod)
VALUES ('0195' , 'Taha' , 'Yurdam' , 'KAR1100')
INSERT dbo.doktor (DoktorId , DoktorAd , DoktorSoyad , BransKod)
VALUES ('5246' , 'Þifa' , 'Iskender' , 'NEF1062')

INSERT dbo.brans (BransKod , Brans)
VALUES ('GH2900' , 'Goz Hastaliklari')
INSERT dbo.brans (BransKod , Brans)
VALUES ('IH1000' , 'Ic Hastaliklari')
INSERT dbo.brans (BransKod , Brans)
VALUES ('KBB2800' , 'Kulak-Burun-Bogaz')
INSERT dbo.brans (BransKod , Brans)
VALUES ('KAR1100' , 'Kardioloji')
INSERT dbo.brans (BransKod , Brans)
VALUES ('NEF1062' , 'Nefroloji')

INSERT dbo.hemsire (HemsireId , HemsireAd , HemsireSoyad , BolumId , NobetId)
VALUES ('7419' , 'Rana' , 'Zor' , 'B1111' , '3')
INSERT dbo.hemsire (HemsireId , HemsireAd , HemsireSoyad , BolumId , NobetId)
VALUES ('7014' , 'Selim' , 'Dayanir' , 'P3333' , '2')
INSERT dbo.hemsire (HemsireId , HemsireAd , HemsireSoyad , BolumId , NobetId)
VALUES ('4524' , 'Aysin' , 'Tuten' , 'M2222' , '3')
INSERT dbo.hemsire (HemsireId , HemsireAd , HemsireSoyad , BolumId , NobetId)
VALUES ('6228' , 'Beyaz' , 'Eraslan' , 'B1111' , '1')
INSERT dbo.hemsire (HemsireId , HemsireAd , HemsireSoyad , BolumId , NobetId)
VALUES ('8903' , 'Suat' , 'Dere' , 'P3333' , '2')

INSERT dbo.bolum (BolumId , BolumAd)
VALUES ('B1111' , 'Acil Servis')
INSERT dbo.bolum (BolumId , BolumAd)
VALUES ('M2222' , 'Cerrahi')
INSERT dbo.bolum (BolumId , BolumAd)
VALUES ('P3333' , 'Dahiliye')

INSERT dbo.nobet (NobetId , Baslangic , Bitis)
VALUES ('2' , '20:30' , '09:30')
INSERT dbo.nobet (NobetId , Baslangic , Bitis)
VALUES ('1' , '09:30' , '08:30')
INSERT dbo.nobet (NobetId , Baslangic , Bitis)
VALUES ('3' , '08:30' , '20:30')

INSERT dbo.oda (odaNo , HemsireId , mevcutYatak)
VALUES ('GH5' , '6228' , '2')
INSERT dbo.oda (odaNo , HemsireId , mevcutYatak)
VALUES ('IH8' , '7014' , '3')
INSERT dbo.oda (odaNo , HemsireId , mevcutYatak)
VALUES ('KBB6' , '8903' , '2')
INSERT dbo.oda (odaNo , HemsireId , mevcutYatak)
VALUES ('KAR1' , '4524' , '1')
INSERT dbo.oda (odaNo , HemsireId , mevcutYatak)
VALUES ('NEF0' , '7419' , '2')

INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('2QC' , '0662' , '8334')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('2QB' , '0662' , '2761')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('5SA' , '1799' , '2216')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('5SB' , '1799' , '1211')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('5SV' , '1799' , '7021')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('8SB' , '9916' , '1234')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('8KB' , '9916' , '9138')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('6MT' , '0195' , '9835')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('7ZE' , '5246' , '9513')
INSERT dbo.recete (receteNo , DoktorId , HastaId)
VALUES ('7MS' , '5246' , '8333')

INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699717010109' , 'PAROL' , '5SA')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8680881090493' , 'DEX-FORTE' , '6MT')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699532011121' , 'CARDURA' , '6MT')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699809097698' , 'PLAVIX' , '6MT')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)--kulak
VALUES ('8680713008177' , 'POBLEX' , '8SB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699220000451' , 'OKSIBOR' , '8KB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)--göz
VALUES ('8699510611206' , 'PROTAGENT' , '2QB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8680177220016' , 'EFEMOLINE' , '2QC')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)--boðaz
VALUES ('8699536090115' , 'MAJEZIK' , '8SB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699578092214' , 'KATARIN' , '8KB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699514129110' , 'DOLOREX' , '5SB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)--burun
VALUES ('8680760510036' , 'ANDOREX' , '8SB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)--DAHILIYE
VALUES ('8699591010271' , 'ZINCO' , '5SA')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699591570355' , 'FERROZINC' , '5SB')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)--B12
VALUES ('8699546095100' , 'BENEXOL' , '5SV')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699504010350' , 'DIGOXIN' , '7MS')
INSERT dbo.ilac (BarkodNo , ilacAd , receteNo)
VALUES ('8699786010086' , 'TERSINOR' , '7ZE')

ALTER TABLE dbo.hasta ADD CONSTRAINT FK_hasta_hastaBilgileri FOREIGN KEY(HastaBId)
REFERENCES dbo.hastaBilgileri (HastaBId)

ALTER TABLE dbo.hasta ADD CONSTRAINT FK_hasta_oda FOREIGN KEY(odaNo)
REFERENCES dbo.oda (odaNo)

ALTER TABLE dbo.hasta ADD CONSTRAINT FK_hasta_refakatci FOREIGN KEY(refakatciId)
REFERENCES dbo.refakatci (refakatciId)

ALTER TABLE dbo.hasta ADD CONSTRAINT CK_hasta CHECK ((Cinsiyet='E' OR Cinsiyet='K'))

ALTER TABLE dbo.doktor ADD CONSTRAINT FK_doktor_brans FOREIGN KEY(BransKod)
REFERENCES dbo.brans (BransKod)

ALTER TABLE dbo.hemsire ADD CONSTRAINT FK_hemsire_bolum FOREIGN KEY(BolumId)
REFERENCES dbo.bolum (BolumId)

ALTER TABLE dbo.hemsire ADD CONSTRAINT FK_hemsire_nobet FOREIGN KEY(NobetId)
REFERENCES dbo.nobet (NobetId)

ALTER TABLE dbo.oda ADD CONSTRAINT FK_oda_hasta FOREIGN KEY(HastaId)
REFERENCES dbo.hasta (HastaId)

ALTER TABLE dbo.oda ADD CONSTRAINT FK_oda_hemsire FOREIGN KEY(HemsireId)
REFERENCES dbo.hemsire (HemsireId)

ALTER TABLE dbo.recete ADD CONSTRAINT FK_recete_hasta FOREIGN KEY(HastaId)
REFERENCES dbo.hasta (HastaId)

ALTER TABLE dbo.recete ADD CONSTRAINT FK_recete_doktor FOREIGN KEY(DoktorId)
REFERENCES dbo.doktor (DoktorId)

ALTER TABLE dbo.ilac ADD CONSTRAINT FK_ilac_recete FOREIGN KEY(receteNo)
REFERENCES dbo.recete (receteNo)