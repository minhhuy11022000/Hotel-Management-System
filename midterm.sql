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

INSERT INTO "Reservation" VALUES (1,6,2,0,109,'12:00:00 PM','1/2/15','12:00:00 PM','1/5/15','1/2/15','cash');
INSERT INTO "Reservation" VALUES (2,3,3,0,108,'12:00:00 PM','2/11/15','12:00:00 PM','2/14/15','2/7/15','cash');
INSERT INTO "Reservation" VALUES (3,8,6,4,204,'12:00:00 PM','2/20/15','12:00:00 PM','2/23/15','2/20/15','cash');
INSERT INTO "Reservation" VALUES (4,11,2,1,108,'12:00:00 PM','6/2/15','12:00:00 PM','6/5/15','5/2/15','online');
INSERT INTO "Reservation" VALUES (5,25,2,2,301,'12:00:00 PM','8/2/15','12:00:00 PM','8/5/15','7/2/15','cash');
INSERT INTO "Reservation" VALUES (6,16,10,6,107,'12:00:00 PM','12/14/15','12:00:00 PM','12/17/15','12/8/15','cash');
INSERT INTO "Reservation" VALUES (7,30,1,0,104,'12:00:00 PM','4/5/15','12:00:00 PM','4/8/15','4/5/15','online');
INSERT INTO "Reservation" VALUES (8,14,4,2,405,'12:00:00 PM','2/18/15','12:00:00 PM','2/21/15','2/18/15','cash');
INSERT INTO "Reservation" VALUES (9,9,5,0,107,'12:00:00 PM','4/10/15','12:00:00 PM','4/13/15','4/10/15','online');
INSERT INTO "Reservation" VALUES (10,4,6,0,102,'12:00:00 PM','3/12/15','12:00:00 PM','3/15/15','3/12/15','online');
INSERT INTO "Reservation" VALUES (11,6,4,0,106,'12:00:00 PM','7/27/15','12:00:00 PM','7/30/15','7/26/15','online');
INSERT INTO "Reservation" VALUES (12,20,7,0,106,'12:00:00 PM','3/21/15','12:00:00 PM','3/24/15','3/20/15','cash');
INSERT INTO "Reservation" VALUES (13,28,2,1,505,'12:00:00 PM','6/19/15','12:00:00 PM','6/22/15','6/18/15','cash');
INSERT INTO "Reservation" VALUES (14,24,2,1,106,'12:00:00 PM','4/23/15','12:00:00 PM','4/26/15','4/13/15','online');
INSERT INTO "Reservation" VALUES (15,26,4,0,105,'12:00:00 PM','12/27/15','12:00:00 PM','12/30/15','12/27/15','online');
INSERT INTO "Reservation" VALUES (16,12,5,0,105,'12:00:00 PM','8/3/15','12:00:00 PM','8/6/15','8/3/15','online');
INSERT INTO "Reservation" VALUES (17,14,9,4,602,'12:00:00 PM','8/13/15','12:00:00 PM','8/16/15','8/3/15','cash');
INSERT INTO "Reservation" VALUES (18,24,5,5,110,'12:00:00 PM','6/6/15','12:00:00 PM','6/9/15','5/6/15','cash');
INSERT INTO "Reservation" VALUES (19,23,8,1,102,'12:00:00 PM','11/27/15','12:00:00 PM','11/30/15','10/27/15','cash');
INSERT INTO "Reservation" VALUES (20,1,2,2,701,'12:00:00 PM','2/14/15','12:00:00 PM','2/17/15','2/7/15','cash');
INSERT INTO "Reservation" VALUES (21,30,4,3,807,'12:00:00 PM','8/22/15','12:00:00 PM','8/25/15','8/22/15','online');
INSERT INTO "Reservation" VALUES (22,5,9,1,101,'12:00:00 PM','1/6/15','12:00:00 PM','1/9/15','1/6/15','online');
INSERT INTO "Reservation" VALUES (23,16,2,4,207,'12:00:00 PM','12/21/15','12:00:00 PM','12/24/15','12/21/15','cash');
INSERT INTO "Reservation" VALUES (24,24,8,2,106,'12:00:00 PM','11/26/15','12:00:00 PM','11/29/15','11/26/15','cash');
INSERT INTO "Reservation" VALUES (25,24,7,2,104,'12:00:00 PM','6/5/15','12:00:00 PM','6/8/15','6/1/15','online');
INSERT INTO "Reservation" VALUES (26,8,7,4,106,'12:00:00 PM','12/17/15','12:00:00 PM','12/20/15','12/17/15','online');
INSERT INTO "Reservation" VALUES (27,19,5,2,210,'12:00:00 PM','6/22/15','12:00:00 PM','6/25/15','6/10/15','online');
INSERT INTO "Reservation" VALUES (28,23,6,1,102,'12:00:00 PM','3/25/15','12:00:00 PM','3/28/15','3/25/15','online');
INSERT INTO "Reservation" VALUES (29,20,4,5,906,'12:00:00 PM','5/24/15','12:00:00 PM','5/27/15','5/24/15','online');
INSERT INTO "Reservation" VALUES (30,1,7,1,104,'12:00:00 PM','4/2/15','12:00:00 PM','4/5/15','4/2/15','online');

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
COMMIT;
