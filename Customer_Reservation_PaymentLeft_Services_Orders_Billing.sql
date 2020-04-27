BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Customer" (
	"ID"	INTEGER NOT NULL UNIQUE,
	"First_name"	VARCHAR(50) NOT NULL,
	"Last_name"	VARCHAR(50) NOT NULL,
	"Gender"	INTEGER NOT NULL,
	"Phone"	INTEGER NOT NULL,
	"Email"	TEXT,
	PRIMARY KEY("ID"AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Reservation" (
	"ID"	INTEGER,
	"Customer_ID"	INTEGER,
	"Adults"	INTEGER,
	"Children"	INTEGER,
	"Room_ID"	INTEGER,
	"Check_in"	TIME,
	"Day_in"	DATE,
	"Check_out"	TIME,
	"Day_out"	DATE,
	"Reservation_dat"	DATE,
	"Payment"	INTEGER,
	PRIMARY KEY("ID"AUTOINCREMENT)
	CONSTRAINT fk_customer
	FOREIGN KEY(Customer_ID) REFERENCES Customer(ID)
);

CREATE TABLE  IF NOT EXISTS "Service" (
	"ID"	TEXT NOT NULL,
	"Service"	TEXT NOT NULL,
	"Description"	TEXT NOT NULL,
	"Charge"	TEXT NOT NULL,
	PRIMARY KEY("ID")
);

CREATE TABLE  IF NOT EXISTS "Service_order" (
	"ID"	INTEGER NOT NULL,
	"Room_ID"	TEXT NOT NULL,
	"Service_ID"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT) 
	CONSTRAINT fk_Services
	FOREIGN KEY (Service_ID)
       REFERENCES Service (ID)
);
INSERT INTO "Customer" ("First_name","Last_name","Gender","Phone","Email") VALUES 
 ('Carl','Mason',1,446513744,'CarlMason@gmail.com'),
 ('Elliott','Carter',1,241751346,'ElliottCarter@gmail.com'),
 ('Jon','Trevor',1,562796753,'JonTrevor@gmail.com'),
 ('Malakal','Jordan',1,688903214,'MalakalJordan@gmail.com'),
 ('Remi','Arina',0,649276256,'RemiArina@gmail.com'),
 ('Dominik','Dominic',1,404661389,'DominikDominic@gmail.com'),
 ('Kendra','Catherine',0,470519406,'KendraCatherine@gmail.com'),
 ('Zachary','Jordan',1,863928003,'ZacharyJordan@gmail.com'),
 ('Collin','Sebastian',1,709589145,'CollinSebastian@gmail.com'),
 ('Lorenzo','Shawn',1,279726134,'LorenzoShawn@gmail.com'),
 ('Chanel','Jasmin',0,273729919,'ChanelJasmin@gmail.com'),
 ('Hayden','Sara',0,656632045,'HaydenSara@gmail.com'),
 ('Hallie','Ana',0,285477666,'HallieAna@gmail.com'),
 ('Decker','Henry',1,589129974,'DeckerHenry@gmail.com'),
 ('Marie','Bailey',0,868208323,'MarieBailey@gmail.com'),
 ('Frank','Mark',1,599745364,'FrankMark@gmail.com'),
 ('Elsie','Hailey',0,724724520,'ElsieHailey@gmail.com'),
 ('Salvador','William',1,719728875,'SalvadorWilliam@gmail.com'),
 ('Ashton','Braden',1,311218593,'AshtonBraden@gmail.com'),
 ('Yousef','Conner',1,776721467,'YousefConner@gmail.com'),
 ('Prince','Matthew',1,515332762,'PrinceMatthew@gmail.com'),
 ('Angelo','Carlos',1,725520113,'AngeloCarlos@gmail.com'),
 ('Cynthia','Lindsey',0,542858103,'CynthiaLindsey@gmail.com'),
 ('Braxton','Chase',1,547335328,'BraxtonChase@gmail.com'),
 ('Jeremiah','Samuel',1,330751554,'JeremiahSamuel@gmail.com'),
 ('Maliyah','Jocelyn',0,363148667,'MaliyahJocelyn@gmail.com'),
 ('Marissa','Ruby',0,313024285,'MarissaRuby@gmail.com'),
 ('Khalil','Mason',1,779286067,'KhalilMason@gmail.com'),
 ('Jaylene','Autumn',0,659703497,'JayleneAutumn@gmail.com'),
 ('Lennon','Daniel',1,727626636,'LennonDaniel@gmail.com');
INSERT INTO "Reservation" ("Customer_ID","Adults","Children","Room_ID","Check_in","Day_in","Check_out","Day_out","Reservation_dat","Payment") VALUES
 (6,2,0,109,'12:00:00 PM','1/2/2015','12:00:00 PM','1/5/2015','1/2/2015',''),
 (3,3,0,108,'12:00:00 PM','2/11/2015','12:00:00 PM','2/14/2015','2/7/2015',NULL),
 (8,6,4,204,'12:00:00 PM','2/20/2015','12:00:00 PM','2/23/2015','2/20/2015',NULL),
 (11,2,1,108,'12:00:00 PM','6/2/2015','12:00:00 PM','6/5/2015','5/2/2015',NULL),
 (25,2,2,301,'12:00:00 PM','8/2/2015','12:00:00 PM','8/5/2015','7/2/2015',NULL),
 (16,10,6,107,'12:00:00 PM','12/14/2015','12:00:00 PM','12/17/2015','12/8/2015',NULL),
 (30,1,0,104,'12:00:00 PM','4/5/2015','12:00:00 PM','4/8/2015','4/5/2015',NULL),
 (14,4,2,405,'12:00:00 PM','2/18/2015','12:00:00 PM','2/21/2015','2/18/2015',NULL),
 (9,5,0,107,'12:00:00 PM','4/10/2015','12:00:00 PM','4/13/2015','4/10/2015',NULL),
 (4,6,0,102,'12:00:00 PM','3/12/2015','12:00:00 PM','3/15/2015','3/12/2015',NULL),
 (6,4,0,106,'12:00:00 PM','7/27/2015','12:00:00 PM','7/30/2015','7/26/2015',NULL),
 (20,7,0,106,'12:00:00 PM','3/21/2015','12:00:00 PM','3/24/2015','3/20/2015',NULL),
 (28,2,1,505,'12:00:00 PM','6/19/2015','12:00:00 PM','6/22/2015','6/18/2015',NULL),
 (24,2,1,106,'12:00:00 PM','4/23/2015','12:00:00 PM','4/26/2015','4/13/2015',NULL),
 (26,4,0,105,'12:00:00 PM','12/27/2015','12:00:00 PM','12/30/2015','12/27/2015',NULL),
 (12,5,0,105,'12:00:00 PM','8/3/2015','12:00:00 PM','8/6/2015','8/3/2015',NULL),
 (14,9,4,602,'12:00:00 PM','8/13/2015','12:00:00 PM','8/16/2015','8/3/2015',NULL),
 (24,5,5,110,'12:00:00 PM','6/6/2015','12:00:00 PM','6/9/2015','5/6/2015',NULL),
 (23,8,1,102,'12:00:00 PM','11/27/2015','12:00:00 PM','11/30/2015','10/27/2015',NULL),
 (1,2,2,701,'12:00:00 PM','2/14/2015','12:00:00 PM','2/17/2015','2/7/2015',NULL),
 (30,4,3,807,'12:00:00 PM','8/22/2015','12:00:00 PM','8/25/2015','8/22/2015',NULL),
 (5,9,1,101,'12:00:00 PM','1/6/2015','12:00:00 PM','1/9/2015','1/6/2015',NULL),
 (16,2,4,207,'12:00:00 PM','12/21/2015','12:00:00 PM','12/24/2015','12/21/2015',NULL),
 (24,8,2,106,'12:00:00 PM','11/26/2015','12:00:00 PM','11/29/2015','11/26/2015',NULL),
 (24,7,2,104,'12:00:00 PM','6/5/2015','12:00:00 PM','6/8/2015','6/1/2015',NULL),
 (8,7,4,106,'12:00:00 PM','12/17/2015','12:00:00 PM','12/20/2015','12/17/2015',NULL),
 (19,5,2,210,'12:00:00 PM','6/22/2015','12:00:00 PM','6/25/2015','6/10/2015',NULL),
 (23,6,1,102,'12:00:00 PM','3/25/2015','12:00:00 PM','3/28/2015','3/25/2015',NULL),
 (20,4,5,906,'12:00:00 PM','5/24/2015','12:00:00 PM','5/27/2015','5/24/2015',NULL),
 (1,7,1,104,'12:00:00 PM','4/2/2015','12:00:00 PM','4/5/2015','4/2/2015',NULL);

INSERT INTO "Service" ("ID","Service","Description","Charge" )
VALUES
('BF',	'breakfast', 'standart 5 star breakfast with choices',	20),
('PRK',	'safe parking', 'safe and secured parking area with 24/7 guards',	10),
('LDRY','laudry',	'fast and profestional laudry service',	10),
('BFFT','buffet dinner',	'dinner buffet with different cooking style everyday',	50),
('SNK',	'snacks',	'snacks and drinks with choices',	10),
('WFL',	'wifi',	'free standart speed wifi',	0),
('WFH',	'highspeed wifi',	'high speed connection for each room',	10),
('BCH',	'hotel beach',	'beautiful beach with sunny white sand and blue sea, all beach services included',	50),
('PLGR','children playground',	'"fun and engaging" playground for kids suitable for various ages',	20),
('SPT',	'sport court',	'included tennis court, golf yard, volley ball and badminton with profestional set-up',	20),
('PET',	'pet care',	'health care center and play ground for pet',	20),
('SPA',	'Spa',	'included all profestional services as a 5-star spa',	50);

INSERT INTO "Service_order" ("Room_ID","Service_ID" )
VALUES
(104,	'BF'),
(103,	'PRK'),
(107,	'BCH'),
(206,	'SPT'),
(103,	'SPA'),
(206,	'PET'),
(407,	'PET'),
(203,	'SPA'),
(309,	'BF'),
(308,	'BF'),
(307,   'BF'),
(201,	'PRK'),
(205,	'LDRY'),
(305,	'PLGR'),
(102,	'BCH'),
(405,	'WFL'),
(207,	'WFH'),
(308,	'WFH'),
(402,	'BF'),
(307,	'SPA'),
(308,	'LDRY'),
(209,	'BFFT'),
(201,	'SPA'),
(204,	'PRK'),
(403,	'LDRY'),
(305,	'SPT'),
(102,	'SPT'),
(201,	'BF'),
(408,	'PET'),
(207,	'SNK');

