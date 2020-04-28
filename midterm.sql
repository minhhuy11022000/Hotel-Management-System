BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Service_order" (
	"ID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Room_ID"	TEXT NOT NULL,
	"Service_ID"	TEXT NOT NULL,
	CONSTRAINT "fk_Services" FOREIGN KEY("Service_ID") REFERENCES "Service"("ID"),
	CONSTRAINT "fk_room_id_order" FOREIGN KEY("Room_ID") REFERENCES "room"("ID")
);
CREATE TABLE IF NOT EXISTS "Service" (
	"ID"	TEXT NOT NULL,
	"Service"	TEXT NOT NULL,
	"Description"	TEXT NOT NULL,
	"Charge"	INTEGER NOT NULL,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Reservation" (
	"ID"	INTEGER PRIMARY KEY AUTOINCREMENT,
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
	CONSTRAINT "fk_customer" FOREIGN KEY("Customer_ID") REFERENCES "Customer"("ID"),
	CONSTRAINT "fk_room_id_reserve" FOREIGN KEY("Room_ID") REFERENCES "room"("ID")
);
CREATE TABLE IF NOT EXISTS "Customer" (
	"ID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"First_name"	VARCHAR(50) NOT NULL,
	"Last_name"	VARCHAR(50) NOT NULL,
	"Gender"	TEXT NOT NULL,
	"Phone"	INTEGER NOT NULL,
	"Email"	TEXT
);
CREATE TABLE IF NOT EXISTS "room" (
	"ID"	INTEGER NOT NULL,
	"category_id"	INTEGER NOT NULL,
	"status_id"	INTEGER NOT NULL,
	CONSTRAINT "fk_category" FOREIGN KEY("category_id") REFERENCES "category"("ID"),
	CONSTRAINT "fk_status" FOREIGN KEY("status_id") REFERENCES "room_status"("ID"),
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "category" (
	"ID"	INTEGER NOT NULL,
	"category"	TEXT NOT NULL,
	"price"	INTEGER NOT NULL,
	"description"	TEXT,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "room_status" (
	"ID"	INTEGER NOT NULL,
	"status"	TEXT NOT NULL,
	"description"	TEXT,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Position_ID" (
	"ID"	INTEGER NOT NULL,
	"Position"	TEXT NOT NULL,
	"Salary"	INTEGER NOT NULL,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Employee" (
	"ID"	INTEGER NOT NULL,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"Gender"	TEXT NOT NULL,
	"Mail"	TEXT,
	"Phone_number"	TEXT,
	"Address"	TEXT,
	"Position_ID"	INTEGER,
	FOREIGN KEY("Position_ID") REFERENCES "Position_ID"("ID"),
	PRIMARY KEY("ID")
);


INSERT INTO "Service" VALUES ('BF','breakfast','standart 5 star breakfast with choices',20);
INSERT INTO "Service" VALUES ('PRK','safe parking','safe and secured parking area with 24/7 guards',10);
INSERT INTO "Service" VALUES ('LDRY','laudry','fast and profestional laudry service',10);
INSERT INTO "Service" VALUES ('BFFT','buffet dinner','dinner buffet with different cooking style everyday',50);
INSERT INTO "Service" VALUES ('SNK','snacks','snacks and drinks with choices',10);
INSERT INTO "Service" VALUES ('WFL','wifi','free standart speed wifi',0);
INSERT INTO "Service" VALUES ('WFH','highspeed wifi','high speed connection for each room',10);
INSERT INTO "Service" VALUES ('BCH','hotel beach','beautiful beach with sunny white sand and blue sea, all beach services included',50);
INSERT INTO "Service" VALUES ('PLGR','children playground','"fun and engaging" playground for kids suitable for various ages',20);
INSERT INTO "Service" VALUES ('SPT','sport court','included tennis court, golf yard, volley ball and badminton with profestional set-up',20);
INSERT INTO "Service" VALUES ('PET','pet care','health care center and play ground for pet',20);
INSERT INTO "Service" VALUES ('SPA','Spa','included all profestional services as a 5-star spa',50);


INSERT INTO "Customer" VALUES (1,'Carl','Mason','Male',446513744,'CarlMason@gmail.com');
INSERT INTO "Customer" VALUES (2,'Elliott','Carter','Male',241751346,'ElliottCarter@gmail.com');
INSERT INTO "Customer" VALUES (3,'Jon','Trevor','Male',562796753,'JonTrevor@gmail.com');
INSERT INTO "Customer" VALUES (4,'Malakal','Jordan','Male',688903214,'MalakalJordan@gmail.com');
INSERT INTO "Customer" VALUES (5,'Remi','Arina','Female',649276256,'RemiArina@gmail.com');
INSERT INTO "Customer" VALUES (6,'Dominik','Dominic','Male',404661389,'DominikDominic@gmail.com');
INSERT INTO "Customer" VALUES (7,'Kendra','Catherine','Female',470519406,'KendraCatherine@gmail.com');
INSERT INTO "Customer" VALUES (8,'Zachary','Jordan','Male',863928003,'ZacharyJordan@gmail.com');
INSERT INTO "Customer" VALUES (9,'Collin','Sebastian','Male',709589145,'CollinSebastian@gmail.com');
INSERT INTO "Customer" VALUES (10,'Lorenzo','Shawn','Male',279726134,'LorenzoShawn@gmail.com');
INSERT INTO "Customer" VALUES (11,'Chanel','Jasmin','Female',273729919,'ChanelJasmin@gmail.com');
INSERT INTO "Customer" VALUES (12,'Hayden','Sara','Female',656632045,'HaydenSara@gmail.com');
INSERT INTO "Customer" VALUES (13,'Hallie','Ana','Female',285477666,'HallieAna@gmail.com');
INSERT INTO "Customer" VALUES (14,'Decker','Henry','Male',589129974,'DeckerHenry@gmail.com');
INSERT INTO "Customer" VALUES (15,'Marie','Bailey','Female',868208323,'MarieBailey@gmail.com');
INSERT INTO "Customer" VALUES (16,'Frank','Mark','Male',599745364,'FrankMark@gmail.com');
INSERT INTO "Customer" VALUES (17,'Elsie','Hailey','Female',724724520,'ElsieHailey@gmail.com');
INSERT INTO "Customer" VALUES (18,'Salvador','William','Male',719728875,'SalvadorWilliam@gmail.com');
INSERT INTO "Customer" VALUES (19,'Ashton','Braden','Male',311218593,'AshtonBraden@gmail.com');
INSERT INTO "Customer" VALUES (20,'Yousef','Conner','Male',776721467,'YousefConner@gmail.com');
INSERT INTO "Customer" VALUES (21,'Prince','Matthew','Male',515332762,'PrinceMatthew@gmail.com');
INSERT INTO "Customer" VALUES (22,'Angelo','Carlos','Male',725520113,'AngeloCarlos@gmail.com');
INSERT INTO "Customer" VALUES (23,'Cynthia','Lindsey','Female',542858103,'CynthiaLindsey@gmail.com');
INSERT INTO "Customer" VALUES (24,'Braxton','Chase','Male',547335328,'BraxtonChase@gmail.com');
INSERT INTO "Customer" VALUES (25,'Jeremiah','Samuel','Male',330751554,'JeremiahSamuel@gmail.com');
INSERT INTO "Customer" VALUES (26,'Maliyah','Jocelyn','Female',363148667,'MaliyahJocelyn@gmail.com');
INSERT INTO "Customer" VALUES (27,'Marissa','Ruby','Female',313024285,'MarissaRuby@gmail.com');
INSERT INTO "Customer" VALUES (28,'Khalil','Mason','Male',779286067,'KhalilMason@gmail.com');
INSERT INTO "Customer" VALUES (29,'Jaylene','Autumn','Female',659703497,'JayleneAutumn@gmail.com');
INSERT INTO "Customer" VALUES (30,'Lennon','Daniel','Male',727626636,'LennonDaniel@gmail.com');

INSERT INTO "category" VALUES (1,'Single',100000,'A room assigned to one person. May have one or more beds.');
INSERT INTO "category" VALUES (2,'Double',200000,'A room assigned to two people. May have one or more beds.');
INSERT INTO "category" VALUES (3,'Triple',300000,'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.');
INSERT INTO "category" VALUES (4,'Quad',400000,'A room assigned to four people. May have two or more beds.');
INSERT INTO "category" VALUES (5,'Queen',500000,'A room with a queen-sized bed. May be occupied by one or more people.');
INSERT INTO "category" VALUES (6,'King',600000,'A room with a king-sized bed. May be occupied by one or more people.');
INSERT INTO "category" VALUES (7,'Twin',700000,'A room with two twin beds. May be occupied by one or more people.');
INSERT INTO "category" VALUES (8,'Suite',800000,'A parlour or living room connected with to one or more bedrooms.');
INSERT INTO "category" VALUES (9,'Disabled room',900000,'This room type is mainly designed for disabled guests and it is required by law that hotels must provide a certain number of accessible rooms to avoid discrimination.');

INSERT INTO "room_status" VALUES (1,'Occupied','A guest is currently occupied in the room');
INSERT INTO "room_status" VALUES (2,'Stayover','The guest is not expected to check out today and will remain at least one more night.');
INSERT INTO "room_status" VALUES (3,'On-Change','The guest has departed, but the room has not yet been cleaned and ready for sale.');
INSERT INTO "room_status" VALUES (4,' Do Not Disturb','The guest has requested not to be disturbed');
INSERT INTO "room_status" VALUES (5,'Cleaning in progress','Room attendant is currently cleaning this room');
INSERT INTO "room_status" VALUES (6,'Sleep-out','A guest is registered to the room, but the bed has not been used');
INSERT INTO "room_status" VALUES (7,'On-Queue','Guest has arrived at the hotel, but the room assigned is not yet ready');
INSERT INTO "room_status" VALUES (8,'Skipper','The guest has left the hotel without making arrangements to settle his or her account.');
INSERT INTO "room_status" VALUES (9,'Vacant and ready','The room has been cleaned and inspected and is ready for an arriving guest.');
INSERT INTO "room_status" VALUES (10,' Lockout','The room has been locked so that the guest cannot re-enter until he or she is cleared by a hotel official.');
INSERT INTO "room_status" VALUES (11,'Did not check out','The guest made arrangements to settle his or her bills ( and thus not a skipper), but has left without informing the front desk.');
INSERT INTO "room_status" VALUES (12,' Due Out','The room is expected to become vacant after the following guest checks out.');
INSERT INTO "room_status" VALUES (13,'Check-Out','The guest has settled his or her account, returned the room keys and left the hotel.');
INSERT INTO "room_status" VALUES (14,'Late Check out','The guest has requested and is being allowed to check out later than the normal/standard departure time of the hotel.');
INSERT INTO "room_status" VALUES (15,'Early Check-in','Guest has requested for an Early Checkin and is being allowed to check-in earlier than the normal/standard check-in time of the hotel.');
INSERT INTO "room_status" VALUES (16,'Vacant and Clean ','Room is Vacant and Cleaned by the housekeeper.');
INSERT INTO "room_status" VALUES (17,'Vacant and Dirty','Room is Vacant and Dirty.');
INSERT INTO "room_status" VALUES (18,'Vacant and Ready','Room is Vacant and Ready for Check-in');
INSERT INTO "room_status" VALUES (19,'Occupied and Clean','Room is Occupied and Cleaned by the Housekeeping.');
INSERT INTO "room_status" VALUES (20,'Occupied and Dirty ','Room is Occupied and yet to be cleaned by the housekeeping.');
INSERT INTO "room_status" VALUES (21,'Double Lock','Guest has put a double lock in the room.');
INSERT INTO "room_status" VALUES (22,'Chain Lock','Guest has placed a Chain Lock in the room.');
INSERT INTO "room_status" VALUES (23,'House Use ','Room is used by the hotel staff or someone staying from the management team.');
INSERT INTO "room_status" VALUES (24,'No Show',' A guest who made a room reservation but did not register or Check-in.');
INSERT INTO "room_status" VALUES (25,'Service Refused','Guest refused to clean the room.');

INSERT INTO "room" VALUES (101,8,19);
INSERT INTO "room" VALUES (102,6,18);
INSERT INTO "room" VALUES (103,6,25);
INSERT INTO "room" VALUES (104,8,20);
INSERT INTO "room" VALUES (105,3,7);
INSERT INTO "room" VALUES (106,2,8);
INSERT INTO "room" VALUES (107,1,22);
INSERT INTO "room" VALUES (108,4,15);
INSERT INTO "room" VALUES (109,1,17);
INSERT INTO "room" VALUES (110,2,11);
INSERT INTO "room" VALUES (201,3,12);
INSERT INTO "room" VALUES (202,1,2);
INSERT INTO "room" VALUES (203,2,7);
INSERT INTO "room" VALUES (204,5,15);
INSERT INTO "room" VALUES (205,7,9);
INSERT INTO "room" VALUES (206,3,4);
INSERT INTO "room" VALUES (207,4,4);
INSERT INTO "room" VALUES (208,2,17);
INSERT INTO "room" VALUES (209,3,6);
INSERT INTO "room" VALUES (210,2,4);
INSERT INTO "room" VALUES (301,9,25);
INSERT INTO "room" VALUES (302,2,15);
INSERT INTO "room" VALUES (303,3,17);
INSERT INTO "room" VALUES (304,3,4);
INSERT INTO "room" VALUES (305,4,15);
INSERT INTO "room" VALUES (306,9,21);
INSERT INTO "room" VALUES (307,2,15);
INSERT INTO "room" VALUES (308,4,2);
INSERT INTO "room" VALUES (309,6,4);
INSERT INTO "room" VALUES (310,1,10);
INSERT INTO "room" VALUES (401,6,19);
INSERT INTO "room" VALUES (402,7,4);
INSERT INTO "room" VALUES (403,7,19);
INSERT INTO "room" VALUES (404,7,20);
INSERT INTO "room" VALUES (405,4,15);
INSERT INTO "room" VALUES (406,4,7);
INSERT INTO "room" VALUES (407,8,23);
INSERT INTO "room" VALUES (408,3,3);
INSERT INTO "room" VALUES (409,9,25);
INSERT INTO "room" VALUES (410,4,22);
INSERT INTO "room" VALUES (501,5,4);
INSERT INTO "room" VALUES (502,5,25);
INSERT INTO "room" VALUES (503,8,14);
INSERT INTO "room" VALUES (504,2,17);
INSERT INTO "room" VALUES (505,1,18);
INSERT INTO "room" VALUES (506,3,1);
INSERT INTO "room" VALUES (507,6,9);
INSERT INTO "room" VALUES (508,8,4);
INSERT INTO "room" VALUES (509,8,11);
INSERT INTO "room" VALUES (510,4,22);
INSERT INTO "room" VALUES (601,3,17);
INSERT INTO "room" VALUES (602,7,18);
INSERT INTO "room" VALUES (603,9,19);
INSERT INTO "room" VALUES (604,7,18);
INSERT INTO "room" VALUES (605,2,14);
INSERT INTO "room" VALUES (606,5,2);
INSERT INTO "room" VALUES (607,5,8);
INSERT INTO "room" VALUES (608,2,12);
INSERT INTO "room" VALUES (609,9,1);
INSERT INTO "room" VALUES (610,5,17);
INSERT INTO "room" VALUES (701,2,22);
INSERT INTO "room" VALUES (702,8,19);
INSERT INTO "room" VALUES (703,2,12);
INSERT INTO "room" VALUES (704,2,13);
INSERT INTO "room" VALUES (705,7,8);
INSERT INTO "room" VALUES (706,9,10);
INSERT INTO "room" VALUES (707,5,19);
INSERT INTO "room" VALUES (708,2,17);
INSERT INTO "room" VALUES (709,5,13);
INSERT INTO "room" VALUES (710,2,19);
INSERT INTO "room" VALUES (801,2,5);
INSERT INTO "room" VALUES (802,6,17);
INSERT INTO "room" VALUES (803,3,9);
INSERT INTO "room" VALUES (804,9,24);
INSERT INTO "room" VALUES (805,6,14);
INSERT INTO "room" VALUES (806,6,14);
INSERT INTO "room" VALUES (807,2,3);
INSERT INTO "room" VALUES (808,4,22);
INSERT INTO "room" VALUES (809,4,1);
INSERT INTO "room" VALUES (810,6,19);
INSERT INTO "room" VALUES (901,1,20);
INSERT INTO "room" VALUES (902,6,25);
INSERT INTO "room" VALUES (903,6,4);
INSERT INTO "room" VALUES (904,3,16);
INSERT INTO "room" VALUES (905,8,2);
INSERT INTO "room" VALUES (906,5,23);
INSERT INTO "room" VALUES (907,5,12);
INSERT INTO "room" VALUES (908,9,7);
INSERT INTO "room" VALUES (909,7,20);
INSERT INTO "room" VALUES (910,8,6);

INSERT INTO "Reservation" VALUES (1,6,2,0,109,'12:00:00 PM','2015-01-02','12:00:00 PM','2015-01-05','2015-01-02','cash'),
INSERT INTO "Reservation" VALUES (2,3,3,0,108,'12:00:00 PM','2015-02-11','12:00:00 PM','2015-02-14','2015-02-07','cash'),
INSERT INTO "Reservation" VALUES (3,8,6,4,204,'12:00:00 PM','2015-02-20','12:00:00 PM','2015-02-23','2015-02-20','cash'),
INSERT INTO "Reservation" VALUES (4,11,2,1,108,'12:00:00 PM','2015-06-02','12:00:00 PM','2015-06-05','2015-05-02','online'),
INSERT INTO "Reservation" VALUES (5,25,2,2,301,'12:00:00 PM','2015-08-02','12:00:00 PM','2015-08-05','2015-07-02','cash'),
INSERT INTO "Reservation" VALUES (6,16,10,6,107,'12:00:00 PM','2015-12-14','12:00:00 PM','2015-12-17','2015-12-08','cash'),
INSERT INTO "Reservation" VALUES (7,30,1,0,104,'12:00:00 PM','2015-04-05','12:00:00 PM','2015-04-08','2015-04-05','online'),
INSERT INTO "Reservation" VALUES (8,14,4,2,405,'12:00:00 PM','2015-02-18','12:00:00 PM','2015-02-21','2015-02-18','cash'),
INSERT INTO "Reservation" VALUES (9,9,5,0,107,'12:00:00 PM','2015-04-10','12:00:00 PM','2015-04-13','2015-04-10','online'),
INSERT INTO "Reservation" VALUES (10,4,6,0,102,'12:00:00 PM','2015-03-12','12:00:00 PM','2015-03-15','2015-03-12','online'),
INSERT INTO "Reservation" VALUES (11,6,4,0,106,'12:00:00 PM','2015-07-27','12:00:00 PM','2015-07-30','2015-07-26','online'),
INSERT INTO "Reservation" VALUES (12,20,7,0,106,'12:00:00 PM','2015-03-21','12:00:00 PM','2015-03-24','2015-03-20','cash'),
INSERT INTO "Reservation" VALUES (13,28,2,1,505,'12:00:00 PM','2015-06-19','12:00:00 PM','2015-06-22','2015-06-18','cash'),
INSERT INTO "Reservation" VALUES (14,24,2,1,106,'12:00:00 PM','2015-04-23','12:00:00 PM','2015-04-26','2015-04-13','online'),
INSERT INTO "Reservation" VALUES (15,26,4,0,105,'12:00:00 PM','2015-12-27','12:00:00 PM','2015-12-30','2015-12-27','online'),
INSERT INTO "Reservation" VALUES (16,12,5,0,105,'12:00:00 PM','2015-08-03','12:00:00 PM','2015-08-06','2015-08-03','online'),
INSERT INTO "Reservation" VALUES (17,14,9,4,602,'12:00:00 PM','2015-08-13','12:00:00 PM','2015-08-16','2015-08-03','cash'),
INSERT INTO "Reservation" VALUES (18,24,5,5,110,'12:00:00 PM','2015-06-06','12:00:00 PM','2015-06-09','2015-05-06','cash'),
INSERT INTO "Reservation" VALUES (19,23,8,1,102,'12:00:00 PM','2015-11-27','12:00:00 PM','2015-11-30','2015-10-27','cash'),
INSERT INTO "Reservation" VALUES (20,1,2,2,701,'12:00:00 PM','2015-02-14','12:00:00 PM','2015-02-17','2015-02-07','cash'),
INSERT INTO "Reservation" VALUES (21,30,4,3,807,'12:00:00 PM','2015-08-22','12:00:00 PM','2015-08-25','2015-08-22','online'),
INSERT INTO "Reservation" VALUES (22,5,9,1,101,'12:00:00 PM','2015-01-06','12:00:00 PM','2015-01-09','2015-01-06','online'),
INSERT INTO "Reservation" VALUES (23,16,2,4,207,'12:00:00 PM','2015-12-21','12:00:00 PM','2015-12-24','2015-12-21','cash'),
INSERT INTO "Reservation" VALUES (24,24,8,2,106,'12:00:00 PM','2015-11-26','12:00:00 PM','2015-11-29','2015-11-26','cash'),
INSERT INTO "Reservation" VALUES (25,24,7,2,104,'12:00:00 PM','2015-06-05','12:00:00 PM','2015-06-08','2015-06-01','online'),
INSERT INTO "Reservation" VALUES (26,8,7,4,106,'12:00:00 PM','2015-12-17','12:00:00 PM','2015-12-20','2015-12-17','online'),
INSERT INTO "Reservation" VALUES (27,19,5,2,210,'12:00:00 PM','2015-06-22','12:00:00 PM','2015-06-25','2015-06-10','online'),
INSERT INTO "Reservation" VALUES (28,23,6,1,102,'12:00:00 PM','2015-03-25','12:00:00 PM','2015-03-28','2015-03-25','online'),
INSERT INTO "Reservation" VALUES (29,20,4,5,906,'12:00:00 PM','2015-05-24','12:00:00 PM','2015-05-27','2015-05-24','online'),
INSERT INTO "Reservation" VALUES (30,1,7,1,104,'12:00:00 PM','2015-04-02','12:00:00 PM','2015-04-05','2015-04-02','online');

INSERT INTO "Service_order" VALUES (1,'104','BF');
INSERT INTO "Service_order" VALUES (2,'103','PRK');
INSERT INTO "Service_order" VALUES (3,'107','BCH');
INSERT INTO "Service_order" VALUES (4,'206','SPT');
INSERT INTO "Service_order" VALUES (5,'103','SPA');
INSERT INTO "Service_order" VALUES (6,'206','PET');
INSERT INTO "Service_order" VALUES (7,'407','PET');
INSERT INTO "Service_order" VALUES (8,'203','SPA');
INSERT INTO "Service_order" VALUES (9,'309','BF');
INSERT INTO "Service_order" VALUES (10,'308','BF');
INSERT INTO "Service_order" VALUES (11,'307','BF');
INSERT INTO "Service_order" VALUES (12,'201','PRK');
INSERT INTO "Service_order" VALUES (13,'205','LDRY');
INSERT INTO "Service_order" VALUES (14,'305','PLGR');
INSERT INTO "Service_order" VALUES (15,'102','BCH');
INSERT INTO "Service_order" VALUES (16,'405','WFL');
INSERT INTO "Service_order" VALUES (17,'207','WFH');
INSERT INTO "Service_order" VALUES (18,'308','WFH');
INSERT INTO "Service_order" VALUES (19,'402','BF');
INSERT INTO "Service_order" VALUES (20,'307','SPA');
INSERT INTO "Service_order" VALUES (21,'308','LDRY');
INSERT INTO "Service_order" VALUES (22,'209','BFFT');
INSERT INTO "Service_order" VALUES (23,'201','SPA');
INSERT INTO "Service_order" VALUES (24,'204','PRK');
INSERT INTO "Service_order" VALUES (25,'403','LDRY');
INSERT INTO "Service_order" VALUES (26,'305','SPT');
INSERT INTO "Service_order" VALUES (27,'102','SPT');
INSERT INTO "Service_order" VALUES (28,'201','BF');
INSERT INTO "Service_order" VALUES (29,'408','PET');
INSERT INTO "Service_order" VALUES (30,'207','SNK');

INSERT INTO "Position_ID" VALUES (1,'General Manager',30000000);
INSERT INTO "Position_ID" VALUES (2,'Sales',15000000);
INSERT INTO "Position_ID" VALUES (3,'Spa Manager',14000000);
INSERT INTO "Position_ID" VALUES (4,'Event Planner',10000000);
INSERT INTO "Position_ID" VALUES (5,'Event Manager',14000000);
INSERT INTO "Position_ID" VALUES (6,'Chef',14000000);
INSERT INTO "Position_ID" VALUES (7,'Cook',7000000);
INSERT INTO "Position_ID" VALUES (8,'Beverage Manager',8000000);
INSERT INTO "Position_ID" VALUES (9,'Front Desk',8000000);
INSERT INTO "Position_ID" VALUES (10,'Concierge',5000000);
INSERT INTO "Position_ID" VALUES (11,'Bellhop',4000000);
INSERT INTO "Position_ID" VALUES (12,'Housekepping Manager',10000000);
INSERT INTO "Position_ID" VALUES (13,'Housekeeper',3000000);
INSERT INTO "Position_ID" VALUES (14,'Server',3000000);

INSERT INTO "Employee" VALUES (134841,'Donna','Brown','Female','donna.brown@aol.com','212-434-7910','670 Lima',11);
INSERT INTO "Employee" VALUES (153989,'Jack','Alexander','Male','jack.alexander@gmail.com','702-603-3769','434 Las Vegas',7);
INSERT INTO "Employee" VALUES (158666,'Rebecca','Stewart','Female','rebecca.stewart@gmail.com','209-233-7631','315 Independence',11);
INSERT INTO "Employee" VALUES (162402,'Diana','Peterson','Female','diana.peterson@hotmail.co.uk','479-783-5656','440 Eureka Springs',2);
INSERT INTO "Employee" VALUES (183071,'Andrea','Garcia','Female','andrea.garcia@aol.com','219-624-3708','770 Granger',11);
INSERT INTO "Employee" VALUES (185032,'Eugene','Perez','Male','eugene.perez@exxonmobil.com','262-472-7112','915 Racine',14);
INSERT INTO "Employee" VALUES (193819,'Benjamin','Russell','Male','benjamin.russell@charter.net','262-404-2252','982 Fremont',4);
INSERT INTO "Employee" VALUES (212893,'Janet','Henderson','Female','janet.henderson@ntlworld.com','239-769-6347','444 Miami',13);
INSERT INTO "Employee" VALUES (214352,'Theresa','Lee','Female','theresa.lee@gmail.com','319-553-8919','481 Toeterville',7);
INSERT INTO "Employee" VALUES (218791,'Aaron','Price','Male','aaron.price@bp.com','219-287-8926','561 Eckerty',11);
INSERT INTO "Employee" VALUES (225925,'Paul','Cooper','Male','paul.cooper@gmail.com','210-984-4722','515 Glidden',11);
INSERT INTO "Employee" VALUES (226714,'Nancy','Davis','Female','nancy.davis@ibm.com','219-610-3067','686 Bowling Green',5);
INSERT INTO "Employee" VALUES (227922,'Amanda','Hughes','Female','amanda.hughes@rediffmail.com','225-544-9700','291 Lake Charles',4);
INSERT INTO "Employee" VALUES (231469,'Ralph','Flores','Male','ralph.flores@yahoo.com','316-280-2864','181 Sabetha',12);
INSERT INTO "Employee" VALUES (241882,'Debra','Wood','Female','debra.wood@hotmail.com','308-646-6219','563 Blair',2);
INSERT INTO "Employee" VALUES (247137,'Alan','Rivera','Male','alan.rivera@apple.com','423-277-6819','196 Knoxville',8);
INSERT INTO "Employee" VALUES (253573,'Sharon','Lopez','Female','sharon.lopez@gmail.com','304-934-5548','322 Bartley',7);
INSERT INTO "Employee" VALUES (262382,'Cheryl','Miller','Female','cheryl.miller@ntlworld.com','270-880-3858','793 Bays',6);
INSERT INTO "Employee" VALUES (263480,'Daniel','Cooper','Male','daniel.cooper@yahoo.com','701-510-8162','742 Manning',12);
INSERT INTO "Employee" VALUES (265813,'Jack','Campbell','Male','jack.campbell@gmail.com','316-499-5737','192 Kalvesta',10);
INSERT INTO "Employee" VALUES (278556,'Richard','Mitchell','Male','richard.mitchell@verizon.net','205-621-5884','756 Ohatchee',5);
INSERT INTO "Employee" VALUES (293459,'Steven','Phillips','Male','steven.phillips@hotmail.com','225-968-5952','234 Baton Rouge',10);
INSERT INTO "Employee" VALUES (301576,'Wayne','Watson','Male','wayne.watson@gmail.com','701-231-9370','723 Maida',12);
INSERT INTO "Employee" VALUES (316110,'Jeremy','Sanchez','Male','jeremy.sanchez@hotmail.com','423-974-2755','554 Alcoa',10);
INSERT INTO "Employee" VALUES (325319,'Carolyn','Price','Female','carolyn.price@yahoo.com','217-409-4338','947 Wheaton',10);
INSERT INTO "Employee" VALUES (329752,'Lillian','Brown','Female','lillian.brown@aol.com','239-812-9041','292 Panacea',13);
INSERT INTO "Employee" VALUES (333476,'Mary','Wilson','Female','mary.wilson@sbcglobal.net','423-937-8660','345 Nashville',3);
INSERT INTO "Employee" VALUES (335732,'Brenda','Butler','Female','brenda.butler@gmail.com','480-814-8284','811 Mesa',14);
INSERT INTO "Employee" VALUES (363065,'Nancy','Jones','Female','nancy.jones@gmail.com','212-825-1930','369 New York City',6);
INSERT INTO "Employee" VALUES (380086,'Carol','Murphy','Female','carol.murphy@gmail.com','216-336-0009','138 Blanchester',11);
INSERT INTO "Employee" VALUES (386158,'Melissa','King','Female','melissa.king@comcast.net','216-605-3731','544 New Matamoras',8);
INSERT INTO "Employee" VALUES (388642,'Ruby','Rogers','Female','ruby.rogers@gmail.com','423-231-6507','544 Woodbury',5);
INSERT INTO "Employee" VALUES (392491,'Theresa','Murphy','Female','theresa.murphy@gmail.com','907-356-1555','905 Mc Grath',10);
INSERT INTO "Employee" VALUES (400173,'Dorothy','Edwards','Female','dorothy.edwards@hotmail.co.uk','215-902-6888','220 Philadelphia',3);
INSERT INTO "Employee" VALUES (407061,'Elizabeth','Jackson','Female','elizabeth.jackson@aol.com','603-568-6118','439 Rochester',4);
INSERT INTO "Employee" VALUES (408351,'Diane','Evans','Female','diane.evans@yahoo.com','215-793-6791','525 Hydetown',3);
INSERT INTO "Employee" VALUES (426038,'Joan','Stewart','Female','joan.stewart@yahoo.com','216-637-6800','693 Middleport',4);
INSERT INTO "Employee" VALUES (428945,'Joe','Robinson','Male','joe.robinson@gmail.com','219-904-2161','552 Michigantown',1);
INSERT INTO "Employee" VALUES (441771,'Cheryl','Scott','Female','cheryl.scott@gmail.com','215-288-9345','879 Quecreek',9);
INSERT INTO "Employee" VALUES (447813,'Ann','Coleman','Female','ann.coleman@ibm.com','319-994-4179','330 Hancock',7);
INSERT INTO "Employee" VALUES (456747,'Roy','Griffin','Male','roy.griffin@yahoo.com','219-506-9378','585 Liberty',6);
INSERT INTO "Employee" VALUES (461593,'Nicole','Ward','Female','nicole.ward@yahoo.com','231-761-7861','839 Detroit',6);
INSERT INTO "Employee" VALUES (474599,'Maria','Walker','Female','maria.walker@microsoft.com','423-668-5506','882 Lawrenceburg',9);
INSERT INTO "Employee" VALUES (476433,'Lillian','Mitchell','Female','lillian.mitchell@shaw.ca','316-876-1484','124 Wichita',12);
INSERT INTO "Employee" VALUES (477253,'Anne','Russell','Female','anne.russell@ibm.com','605-635-1306','341 Stockholm',14);
INSERT INTO "Employee" VALUES (477616,'Frances','Young','Female','frances.young@gmail.com','210-819-9765','982 Delmita',3);
INSERT INTO "Employee" VALUES (478003,'Cynthia','White','Female','cynthia.white@gmail.com','314-593-3092','485 Kansas City',3);
INSERT INTO "Employee" VALUES (489424,'Phillip','White','Male','phillip.white@gmail.com','503-668-6592','580 Mapleton',9);
INSERT INTO "Employee" VALUES (491943,'Nancy','Howard','Female','nancy.howard@gmail.com','236-973-8086','819 Saxe',6);
INSERT INTO "Employee" VALUES (495141,'Tammy','Young','Female','tammy.young@comcast.net','231-290-3075','314 Alma',6);
INSERT INTO "Employee" VALUES (499687,'Patrick','Bailey','Male','patrick.bailey@aol.com','319-812-6957','371 Macksburg',11);
INSERT INTO "Employee" VALUES (515103,'Anne','Perez','Female','anne.perez@sbcglobal.net','423-837-3338','263 Cookeville',14);
INSERT INTO "Employee" VALUES (524896,'Judy','Hernandez','Female','judy.hernandez@gmail.com','316-736-6126','700 Topeka',13);
INSERT INTO "Employee" VALUES (525955,'Judy','Gonzales','Female','judy.gonzales@gmail.com','201-640-8645','479 Eatontown',8);
INSERT INTO "Employee" VALUES (528509,'Paula','Diaz','Female','paula.diaz@gmail.com','252-531-7641','301 Beulaville',3);
INSERT INTO "Employee" VALUES (528673,'Paul','Watson','Male','paul.watson@hotmail.com','270-556-7711','458 Blue River',4);
INSERT INTO "Employee" VALUES (533952,'Kelly','Adams','Female','kelly.adams@bp.com','405-418-0037','397 Meno',1);
INSERT INTO "Employee" VALUES (539712,'Nancy','Baker','Female','nancy.baker@bp.com','229-336-5117','833 Atlanta',13);
INSERT INTO "Employee" VALUES (560455,'Carolyn','Hayes','Female','carolyn.hayes@hotmail.co.uk','239-882-8784','675 Saint Cloud',11);
INSERT INTO "Employee" VALUES (621833,'Gregory','Edwards','Male','gregory.edwards@outlook.com','503-256-9654','671 Bonanza',13);
INSERT INTO "Employee" VALUES (622406,'Thomas','Lewis','Male','thomas.lewis@gmail.com','314-679-3697','471 Dutchtown',9);
INSERT INTO "Employee" VALUES (623253,'Ruby','Stewart','Female','ruby.stewart@gmail.com','218-445-2369','821 Margie',14);
INSERT INTO "Employee" VALUES (623929,'Jimmy','Howard','Male','jimmy.howard@yahoo.com','212-855-9316','147 Oriskany',7);
INSERT INTO "Employee" VALUES (639892,'Jose','Hill','Male','jose.hill@hotmail.com','228-245-5000','482 Biloxi',13);
INSERT INTO "Employee" VALUES (677509,'Lois','Walker','Female','lois.walker@hotmail.com','303-572-8492','272 Denver',4);
INSERT INTO "Employee" VALUES (683826,'Roger','Roberts','Male','roger.roberts@gmail.com','206-497-3141','648 Mount Vernon',13);
INSERT INTO "Employee" VALUES (687017,'Frances','Watson','Female','frances.watson@outlook.com','406-530-8069','791 Trego',12);
INSERT INTO "Employee" VALUES (702813,'Ernest','Martinez','Male','ernest.martinez@gmail.com','479-951-4138','112 Uniontown',6);
INSERT INTO "Employee" VALUES (704709,'Harold','Nelson','Male','harold.nelson@gmail.com','217-555-9216','474 Carol Stream',2);
INSERT INTO "Employee" VALUES (726264,'Carl','Collins','Male','carl.collins@yahoo.com','479-740-7633','916 Wright',11);
INSERT INTO "Employee" VALUES (732017,'Cynthia','Ramirez','Female','cynthia.ramirez@btinternet.com','406-961-7340','488 Browning',3);
INSERT INTO "Employee" VALUES (750173,'Antonio','Roberts','Male','antonio.roberts@hotmail.com','205-267-7304','960 Mc Calla',7);
INSERT INTO "Employee" VALUES (758872,'Henry','Jenkins','Male','henry.jenkins@hotmail.com','314-731-7135','668 Riverside',7);
INSERT INTO "Employee" VALUES (761821,'Ernest','Washington','Male','ernest.washington@msn.com','212-596-1659','691 Saranac Lake',3);
INSERT INTO "Employee" VALUES (765850,'Linda','Moore','Female','linda.moore@gmail.com','215-793-7095','432 Albion',4);
INSERT INTO "Employee" VALUES (766610,'Joyce','Jenkins','Female','joyce.jenkins@aol.com','262-455-4187','987 Ellsworth',11);
INSERT INTO "Employee" VALUES (802554,'Ryan','Alexander','Male','ryan.alexander@shell.com','225-395-3347','611 Jarreau',6);
INSERT INTO "Employee" VALUES (806955,'William','Hernandez','Male','william.hernandez@rediffmail.com','239-276-0532','707 Mary Esther',5);
INSERT INTO "Employee" VALUES (818384,'Peter','Washington','Male','peter.washington@bp.com','231-322-0316','146 Portage',2);
INSERT INTO "Employee" VALUES (844177,'Margaret','Allen','Female','margaret.allen@gmail.com','216-697-6987','721 Richmond Dale',1);
INSERT INTO "Employee" VALUES (867084,'Deborah','Smith','Female','deborah.smith@yahoo.com','907-279-8694','719 Atqasuk',6);
INSERT INTO "Employee" VALUES (870820,'Martha','Washington','Female','martha.washington@aol.com','405-945-0242','262 Nardin',13);
INSERT INTO "Employee" VALUES (879753,'Pamela','Wright','Female','pamela.wright@aol.com','307-329-8832','142 Banner',8);
INSERT INTO "Employee" VALUES (883936,'Douglas','Flores','Male','douglas.flores@gmail.com','303-836-4721','554 Eckert',9);
INSERT INTO "Employee" VALUES (890290,'Julia','Scott','Female','julia.scott@apple.com','423-939-1010','802 Primm Springs',8);
INSERT INTO "Employee" VALUES (893212,'Amy','Howard','Female','amy.howard@aol.com','803-613-3168','474 Kline',8);
INSERT INTO "Employee" VALUES (904898,'Ann','Cooper','Female','ann.cooper@exxonmobil.com','406-278-6460','142 Arlee',4);
INSERT INTO "Employee" VALUES (912990,'Joshua','Stewart','Male','joshua.stewart@yahoo.ca','217-279-9342','442 New Douglas',1);
INSERT INTO "Employee" VALUES (915638,'Jason','Anderson','Male','jason.anderson@gmail.com','217-856-6752','779 Hudson',4);
INSERT INTO "Employee" VALUES (917395,'Christopher','Nelson','Male','christopher.nelson@aol.com','480-946-9780','362 Willow Beach',4);
INSERT INTO "Employee" VALUES (917937,'Todd','Hall','Male','todd.hall@yahoo.com','240-513-8668','806 Randallstown',13);
INSERT INTO "Employee" VALUES (923947,'Mary','Bryant','Female','mary.bryant@verizon.net','319-827-3516','993 Conroy',12);
INSERT INTO "Employee" VALUES (940761,'Brenda','Robinson','Female','brenda.robinson@gmail.com','225-945-4954','994 Stonewall',12);
INSERT INTO "Employee" VALUES (940922,'Melissa','Butler','Female','melissa.butler@hotmail.com','308-827-9016','477 Maxwell',9);
INSERT INTO "Employee" VALUES (951225,'Margaret','Brooks','Female','margaret.brooks@gmail.com','303-960-0117','664 Haswell',11);
INSERT INTO "Employee" VALUES (958326,'Larry','Miller','Male','larry.miller@shell.com','217-574-9283','201 East Saint Louis',6);
INSERT INTO "Employee" VALUES (969580,'Matthew','Turner','Male','matthew.turner@gmail.com','236-972-7624','866 Heathsville',6);
INSERT INTO "Employee" VALUES (969964,'Janice','Parker','Female','janice.parker@yahoo.com','314-842-5984','436 Whiteman Air Force Base',7);
INSERT INTO "Employee" VALUES (971640,'Clarence','Ross','Male','clarence.ross@apple.com','423-772-0118','339 Oneida',6);
INSERT INTO "Employee" VALUES (979607,'Carol','Edwards','Female','carol.edwards@msn.com','225-283-4295','207 Shreveport',2);

COMMIT;
