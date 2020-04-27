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
    PRIMARY KEY("ID"),
    FOREIGN KEY("status_id") REFERENCES "room_status"("ID"),
    FOREIGN KEY("category_id") REFERENCES "category"("ID")
);

INSERT INTO "room_status" VALUES (1,'Occupied','A guest is currently occupied in the room');
INSERT INTO "room_status" VALUES (2,'Stayover','The guest is not expected to check out today and will remain at least one more night.');
INSERT INTO "room_status" VALUES (3,'On-Change','The guest has departed, but the room has not yet been cleaned and ready for sale.');
INSERT INTO "room_status" VALUES (4,' Do Not Disturb','The guest has requested not to be disturbed');
INSERT INTO "room_status" VALUES (5,'Cleaning in progress','Room attendant is currently cleaning this room');
INSERT INTO "room_status" VALUES (6,'Sleep-out','A guest is registered to the room, but the bed has not been used');
INSERT INTO "room_status" VALUES (7,'On-Queue','Guest has arrived at the hotel, but the room assigned is not yet ready');
INSERT INTO "room_status" VALUES (8,'Skipper','The guest has left the hotel without making arrangements to settle his or her account.');
INSERT INTO "room_status" VALUES (9,'Vacant and ready','The room has been cleaned and inspected and is ready for an arriving guest.');
INSERT INTO "room_status" VALUES (10,' Lockout','The room has been locked so that the guest cannot re-enter until he or she is cleared by a hotel official.');
INSERT INTO "room_status" VALUES (11,'Did not check out','The guest made arrangements to settle his or her bills ( and thus not a skipper), but has left without informing the front desk.');
INSERT INTO "room_status" VALUES (12,' Due Out','The room is expected to become vacant after the following guest checks out.');
INSERT INTO "room_status" VALUES (13,'Check-Out','The guest has settled his or her account, returned the room keys and left the hotel.');
INSERT INTO "room_status" VALUES (14,'Late Check out','The guest has requested and is being allowed to check out later than the normal/standard departure time of the hotel.');
INSERT INTO "room_status" VALUES (15,'Early Check-in','Guest has requested for an Early Checkin and is being allowed to check-in earlier than the normal/standard check-in time of the hotel.');
INSERT INTO "room_status" VALUES (16,'Vacant and Clean ','Room is Vacant and Cleaned by the housekeeper.');
INSERT INTO "room_status" VALUES (17,'Vacant and Dirty','Room is Vacant and Dirty.');
INSERT INTO "room_status" VALUES (18,'Vacant and Ready','Room is Vacant and Ready for Check-in');
INSERT INTO "room_status" VALUES (19,'Occupied and Clean','Room is Occupied and Cleaned by the Housekeeping.');
INSERT INTO "room_status" VALUES (20,'Occupied and Dirty ','Room is Occupied and yet to be cleaned by the housekeeping.');
INSERT INTO "room_status" VALUES (21,'Double Lock','Guest has put a double lock in the room.');
INSERT INTO "room_status" VALUES (22,'Chain Lock','Guest has placed a Chain Lock in the room.');
INSERT INTO "room_status" VALUES (23,'House Use ','Room is used by the hotel staff or someone staying from the management team.');
INSERT INTO "room_status" VALUES (24,'No Show',' A guest who made a room reservation but did not register or Check-in.');
INSERT INTO "room_status" VALUES (25,'Service Refused','Guest refused to clean the room.');
INSERT INTO "category" VALUES (1,'Single',100000,'A room assigned to one person. May have one or more beds.');
INSERT INTO "category" VALUES (2,'Double',200000,'A room assigned to two people. May have one or more beds.');
INSERT INTO "category" VALUES (3,'Triple',300000,'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.');
INSERT INTO "category" VALUES (4,'Quad',400000,'A room assigned to four people. May have two or more beds.');
INSERT INTO "category" VALUES (5,'Queen',500000,'A room with a queen-sized bed. May be occupied by one or more people.');
INSERT INTO "category" VALUES (6,'King',600000,'A room with a king-sized bed. May be occupied by one or more people.');
INSERT INTO "category" VALUES (7,'Twin',700000,'A room with two twin beds. May be occupied by one or more people.');
INSERT INTO "category" VALUES (8,'Suite',800000,'A parlour or living room connected with to one or more bedrooms.');
INSERT INTO "category" VALUES (9,'Disabled room',900000,'This room type is mainly designed for disabled guests and it is required by law that hotels must provide a certain number of accessible rooms to avoid discrimination.');
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
COMMIT;
