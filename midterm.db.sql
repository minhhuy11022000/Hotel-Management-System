BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS "room_status" (
	"ID"	INTEGER NOT NULL,
	"status"	TEXT NOT NULL,
	"description"	TEXT,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "category" (
	"ID"	INTEGER NOT NULL,
	"category"	TEXT NOT NULL,
	"price"	INTEGER NOT NULL,
	"description"	TEXT,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "room" (
    "ID"    INTEGER NOT NULL,
    "category_id"   INTEGER NOT NULL,
    "status_id" INTEGER NOT NULL,
    PRIMARY KEY("ID")
	CONSTRAINT fk_status
    FOREIGN KEY(status_id) REFERENCES room_status(ID)
	CONSTRAINT fk_category
    FOREIGN KEY(category_id) REFERENCES category(ID)
);


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
	CONSTRAINT fk_room_id_reserve
	FOREIGN KEY (Room_ID) REFERENCES room(ID)
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
	FOREIGN KEY (Service_ID) REFERENCES Service (ID)
	CONSTRAINT fk_room_id_order
	FOREIGN KEY(Room_ID) REFERENCES room(ID)
);

CREATE TABLE IF NOT EXISTS "Billing" (
	"ID"	INTEGER NOT NULL,
	"RoomID"	INTEGER NOT NULL,
	"Customer_ID"	INTEGER NOT NULL,
	"Accomodation_Cost"	REAL NOT NULL,
	"Service_cost"	REAL,
	PRIMARY KEY("ID" AUTOINCREMENT)
	CONSTRAINT fk_customer_id_billing
	FOREIGN KEY(Customer_ID) REFERENCES Customer(ID)
	CONSTRAINT fk_room_id_billing
	FOREIGN KEY(RoomID) REFERENCES room(ID)
);


INSERT INTO "room_status"("ID","status","description")
VALUES 
 (1,'Occupied','A guest is currently occupied in the room'),
 (2,'Stayover','The guest is not expected to check out today and will remain at least one more night.'),
 (3,'On-Change','The guest has departed, but the room has not yet been cleaned and ready for sale.'),
 (4,' Do Not Disturb','The guest has requested not to be disturbed'),
 (5,'Cleaning in progress','Room attendant is currently cleaning this room'),
 (6,'Sleep-out','A guest is registered to the room, but the bed has not been used'),
 (7,'On-Queue','Guest has arrived at the hotel, but the room assigned is not yet ready'),
 (8,'Skipper','The guest has left the hotel without making arrangements to settle his or her account.'),
 (9,'Vacant and ready','The room has been cleaned and inspected and is ready for an arriving guest.'),
 (10,' Lockout','The room has been locked so that the guest cannot re-enter until he or she is cleared by a hotel official.'),
 (11,'Did not check out','The guest made arrangements to settle his or her bills ( and thus not a skipper), but has left without informing the front desk.'),
 (12,' Due Out','The room is expected to become vacant after the following guest checks out.'),
 (13,'Check-Out','The guest has settled his or her account, returned the room keys and left the hotel.'),
 (14,'Late Check out','The guest has requested and is being allowed to check out later than the normal/standard departure time of the hotel.'),
 (15,'Early Check-in','Guest has requested for an Early Checkin and is being allowed to check-in earlier than the normal/standard check-in time of the hotel.'),
 (16,'Vacant and Clean ','Room is Vacant and Cleaned by the housekeeper.'),
 (17,'Vacant and Dirty','Room is Vacant and Dirty.'),
 (18,'Vacant and Ready','Room is Vacant and Ready for Check-in'),
 (19,'Occupied and Clean','Room is Occupied and Cleaned by the Housekeeping.'),
 (20,'Occupied and Dirty ','Room is Occupied and yet to be cleaned by the housekeeping.'),
 (21,'Double Lock','Guest has put a double lock in the room.'),
 (22,'Chain Lock','Guest has placed a Chain Lock in the room.'),
 (23,'House Use ','Room is used by the hotel staff or someone staying from the management team.'),
 (24,'No Show',' A guest who made a room reservation but did not register or Check-in.'),
 (25,'Service Refused','Guest refused to clean the room.');
 
INSERT INTO "category" ("ID","category","price","description")
VALUES 
 (1,'Single',100000,'A room assigned to one person. May have one or more beds.'),
 (2,'Double',200000,'A room assigned to two people. May have one or more beds.'),
 (3,'Triple',300000,'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.'),
 (4,'Quad',400000,'A room assigned to four people. May have two or more beds.'),
 (5,'Queen',500000,'A room with a queen-sized bed. May be occupied by one or more people.'),
 (6,'King',600000,'A room with a king-sized bed. May be occupied by one or more people.'),
 (7,'Twin',700000,'A room with two twin beds. May be occupied by one or more people.'),
 (8,'Suite',800000,'A parlour or living room connected with to one or more bedrooms.'),
 (9,'Disabled room',900000,'This room type is mainly designed for disabled guests and it is required by law that hotels must provide a certain number of accessible rooms to avoid discrimination.');

INSERT INTO "room" ("ID","category_id","status_id")
VALUES 
 (101,8,19),
 (102,6,18),
 (103,6,25),
 (104,8,20),
 (105,3,7),
 (106,2,8),
 (107,1,22),
 (108,4,15),
 (109,1,17),
 (110,2,11),
 (201,3,12),
 (202,1,2),
 (203,2,7),
 (204,5,15),
 (205,7,9),
 (206,3,4),
 (207,4,4),
 (208,2,17),
 (209,3,6),
 (210,2,4),
 (301,9,25),
 (302,2,15),
 (303,3,17),
 (304,3,4),
 (305,4,15),
 (306,9,21),
 (307,2,15),
 (308,4,2),
 (309,6,4),
 (310,1,10),
 (401,6,19),
 (402,7,4),
 (403,7,19),
 (404,7,20),
 (405,4,15),
 (406,4,7),
 (407,8,23),
 (408,3,3),
 (409,9,25),
 (410,4,22),
 (501,5,4),
 (502,5,25),
 (503,8,14),
 (504,2,17),
 (505,1,18),
 (506,3,1),
 (507,6,9),
 (508,8,4),
 (509,8,11),
 (510,4,22),
 (601,3,17),
 (602,7,18),
 (603,9,19),
 (604,7,18),
 (605,2,14),
 (606,5,2),
 (607,5,8),
 (608,2,12),
 (609,9,1),
 (610,5,17),
 (701,2,22),
 (702,8,19),
 (703,2,12),
 (704,2,13),
 (705,7,8),
 (706,9,10),
 (707,5,19),
 (708,2,17),
 (709,5,13),
 (710,2,19),
 (801,2,5),
 (802,6,17),
 (803,3,9),
 (804,9,24),
 (805,6,14),
 (806,6,14),
 (807,2,3),
 (808,4,22),
 (809,4,1),
 (810,6,19),
 (901,1,20),
 (902,6,25),
 (903,6,4),
 (904,3,16),
 (905,8,2),
 (906,5,23),
 (907,5,12),
 (908,9,7),
 (909,7,20),
 (910,8,6);

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

INSERT INTO "Billing" ( "RoomID","Customer_ID", "Accomodation_Cost", "Service_cost" )
VALUES
( 104,	12,	1000,	20),
( 103,	14,	2000,	10),
( 107,	23,	2000,	50),
( 206,	11,         1000,	20),
( 103,	15,	5000,	50),
( 206,	17,	4000,	20),
( 407,	16,	2000,	20),
( 203,	11,	3000,	50),
( 309,	3,	5000,	20),
( 308,	4,	5000,	20),
( 307,	17,	1000,	10),
( 401,	15,	2000,	10),
( 205,	16,	1000,	10),
( 305,	11,	1000,	20),
( 102,	10,	2000,	50),
( 405,	23,	3000,	0),
( 207,	25,	1000,	10),
( 308,	6,	2000,	10),
( 402,	8,	5000,	20),
( 307,	18,	4000,	50),
( 308,	9,	2000,	10),
( 209,	19,	4000,	50),
( 201,	17,	1000,	50),
( 204,	22,	5000,	10),
( 403,	23,	7000,	10),
( 305,	17,	2000,	20),
( 102,	21,	7000,	20),
( 201,	20,	4000,	20),
( 408,	23,	7000,	20),
( 207,	12,	2000,	10);

COMMIT
