CREATE TABLE hotel_rooms (
  "room_number"   integer,
  "floor_number" integer,
  "price"  integer,
  
  
  PRIMARY KEY ("room_number")
);

CREATE TABLE hotel_guests (
  "id"   INTEGER,
  "first_name" VARCHAR(32),
  "last_name" VARCHAR(32),
  "email" VARCHAR(100),
  "phone_number" VARCHAR(12),
  "address" text,
  
  PRIMARY KEY ("id")
);

CREATE TABLE hotel_bookings (
  "id"               INTEGER,
  "guest_id"        INTEGER,
  "room_number"      integer,
  "check_in_date" DATE,
  "check_out_date"  DATE,
  
  FOREIGN KEY ("guest_id")
    REFERENCES "hotel_guests" ("id")
    ON DELETE CASCADE,
  
  FOREIGN KEY ("room_number")
    REFERENCES "hotel_rooms" ("room_number")
    ON DELETE CASCADE,
  
  PRIMARY KEY ("id")
);



INSERT INTO hotel_rooms
  ("room_number", "floor_number", "price")
VALUES
  (101, 1, 79),
  (102, 1, 78),
  (105, 1, 80),
  (107, 1, 79),
  (202, 2, 100),
  (201, 2, 100),
  (205, 2, 110),
  (207, 2, 103);


INSERT INTO hotel_guests
  ("id", "first_name", "last_name", "email", "phone_number", "address")
VALUES
  ( 1,   'Hermione',  'Granger', 'hgranger@hogwarts.edu', '223-543-0493', '2009 muggle road, bristol, england'),
  ( 2,   'Terry', 'Boot', 'tboot@magicmilli.com', '393-202-8588', '10 turnet lane, great america, england'),
  ( 3,   'Padma', 'Patil', 'patpad@onedirectionsfans.net', '234-949-2222', '30 gotley road, bradford, england'),
  ( 4,   'Cho', 'Chang', 'cho@chochangindustries.com', '654-543-4325', '939 altameter street, amarillo, england'),
  ( 5,   'Cedric', 'Diggory', 'cdiggory@hotmail.com', '345-234-1234', '44 44th street, brighton, england'),
  ( 6,   'Harry', 'Potter', 'boywholived@hpfanclub.com', '999-939-3333', '10 privet lane, somewhere, england');

INSERT INTO bookings
  ("id", "guest_id", "room_number",       "check_in_date",                        "check_out_date")
VALUES
 ( 1,     1,          '201',  CURRENT_DATE - INTERVAL '6 YEARS, 1 DAY',  CURRENT_DATE - INTERVAL '6 YEARS'),
 ( 2,     4,          '202',  CURRENT_DATE - INTERVAL '6 YEARS, 1 DAY',  CURRENT_DATE - INTERVAL '6 YEARS'),
 ( 3,     2,          '102',  CURRENT_DATE - INTERVAL '6 YEARS, 1 DAY',  CURRENT_DATE - INTERVAL '6 YEARS'),
 ( 4,     3,          '207',  CURRENT_DATE - INTERVAL '7 DAYS',          CURRENT_DATE - INTERVAL '4 DAYS'),
 ( 5,     2,          '101',  CURRENT_DATE - INTERVAL '10 DAYS',          CURRENT_DATE - INTERVAL '9 DAYS'),
 ( 6,     1,          '201',  CURRENT_DATE - INTERVAL '3 DAYS',          CURRENT_DATE - INTERVAL '1 DAY'),
 ( 7,     5,          '202',  CURRENT_DATE - INTERVAL '1 DAY',           NULL),
 ( 8,     2,          '105', CURRENT_DATE - INTERVAL '3 DAYS',           CURRENT_DATE - INTERVAL '1 DAY'),
 ( 9,     2,          '107', CURRENT_DATE - INTERVAL '3 DAYS',           CURRENT_DATE - INTERVAL '1 DAY');


