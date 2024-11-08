-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

INSERT INTO "Residents_temp"("Fisrt_name","Last_name","Gender","Birth_date","Role","Bracelet_id")
    VALUES ('Paul', 'GreenField', 'male','1986-01-14', 'Father','BP01'),
           ('Jane', 'GreenField', 'female','1987-06-03', 'Mother','BJ02'),
           ('Sarah', 'GreenField', 'female','2006-12-11', 'Daugther','BS03'),
           ('Laura', 'GreenField', 'female','2004-03-22', 'Daugther','BL04');


INSERT INTO "Employee"("Fisrt_name","Last_name","Gender","Birth_date","hire_date","Function","Bracelet_id")
    VALUES ('Maggie', 'Delom', 'female','1992-07-13', '2015-01-01','Housekeeper','BM05'),
          ('jenny', 'keny', 'female','1998-11-25', '2018-01-01','Housekeeper','BJ06'),
          ('Chris', 'Whitesky', 'male','1995-08-20', '2009-01-01','gardener','BC07'),
          ('John', 'Dena', 'male','1986-01-21', '2001-01-01','house steward','BJJ08');


INSERT INTO "Robots"("name" ,"company","Function","hire_date","Price","Bracelet_id")
    VALUES ('samourai','Futur tech','Protection','2023-02-25','102000','BSM09'),
           ('creepy','Futur tech','Protection','2024-01-20','90200.99','BCC10'),
           ('katyshape','Futur tech','friend','2023-02-25','100400.50','BKT11'),
           ('Droida','Quantika','Domestic','2023-06-25','80000.60','BDR12'),
           ('Cuty','Quantika','Domestic', '2023-11-12','80000.60','BCU13');

INSERT INTO "House"("id","Room_name","Cctv_id","Crime_scene")
    VALUES('VGR67','Video game room','CAM005','No'),
          ('BR432','Billiard room','CAM004','Yes'),
          ('DR953','Dining room','CAM001','No'),
          ('KTC65','Kitchen','CAM003','No'),
          ('ETR74','Entrance','CAM006','No'),
          ('LGR80','Living room','CAM002','No');


--Paul's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('LGR80','2024-08-16 00:20:13','BP01'),
         ('BR432','2024-08-16 00:40:19','BP01'),
         ('VGR67','2024-08-16 01:00:26','BP01'),
         ('ETR74','2024-08-16 02:15:43','BP01');

--Jane's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('LGR80','2024-08-16 00:20:13','BJ02'),
         ('BR432','2024-08-16 00:40:19','BJ02'),
         ('ETR74','2024-08-16 01:00:10','BJ02');

--Sarah's movements (The Victim)
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('KTC6','2024-08-16 00:00:08','BS03'),
         ('LGR80','2024-08-16 00:20:19','BS03'),
         ('BR432','2024-08-16 00:40:15','BS03'),
         ('KTC6','2024-08-16 01:00:50','BS03'),
         ('VGR67','2024-08-16 01:10:10','BS03'),
         ('KTC6','2024-08-16 01:50:11','BS03'),
         ('BR432','2024-08-16 02:20:40','BS03');

--Laura's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:20:18','BL04'),
         ('ETR74','2024-08-16 01:02:39','BL04'),
         ('BR432','2024-08-16 01:03:15','BL04'),
         ('ETR74','2024-08-16 01:40:50','BL04');

--Maggie's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:40:28','BM05'),
         ('LGR80','2024-08-16 00:41:16','BM05'),
         ('KTC6','2024-08-16 00:55:15','BM05'),
         ('ETR74','2024-08-16 01:20:55','BM05');

--jenny's's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:40:28','BJ06'),
         ('LGR80','2024-08-16 00:41:16','BJ06'),
         ('KTC6','2024-08-16 00:55:15','BJ06'),
         ('ETR74','2024-08-16 01:20:55','BJ06');

--Chris's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:40:28','BC07'),
         ('LGR80','2024-08-16 00:41:16','BC07'),
         ('ETR74','2024-08-16 00:55:15','BC07');

--John's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:40:28','BJJ08'),
         ('LGR80','2024-08-16 00:41:16','BJJ08'),
         ('ETR74','2024-08-16 00:55:15','BJJ08');

--Samourai's movements
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:10:28','BSM09'),
         ('LGR80','2024-08-16 00:15:16','BSM09'),
         ('DR953','2024-08-16 00:20:16','BSM09'),
         ('BR432','2024-08-16 00:25:15','BSM09'),
         ('VGR67','2024-08-16 00:30:15','BSM09'),
         ('ETR74','2024-08-16 00:35:28','BSM09'),
         ('LGR80','2024-08-16 00:40:16','BSM09'),
         ('DR953','2024-08-16 00:45:16','BSM09'),
         ('BR432','2024-08-16 00:50:15','BSM09'),
         ('VGR67','2024-08-16 00:55:15','BSM09');

--Samourai's movements--
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 01:00:08','BSM09'),
         ('LGR80','2024-08-16 01:05:10','BSM09'),
         ('DR953','2024-08-16 01:10:06','BSM09'),
         ('BR432','2024-08-16 01:15:15','BSM09'),
         ('VGR67','2024-08-16 01:20:15','BSM09'),
         ('ETR74','2024-08-16 01:30:28','BSM09'),
         ('LGR80','2024-08-16 01:40:10','BSM09'),
         ('DR953','2024-08-16 00:55:16','BSM09');

--Samourai's movements---
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('BR432','2024-08-16 02:00:18','BSM09'),
         ('ETR74','2024-08-16 02:40:10','BSM09'),
         ('LGR80','2024-08-16 03:10:06','BSM09'),
         ('BR432','2024-08-16 03:20:15','BSM09');

--Creepy's movements--
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('ETR74','2024-08-16 00:10:18','BCC10'),
         ('VGR67','2024-08-16 00:15:10','BCC10'),
         ('BR432','2024-08-16 00:20:06','BCC10'),
         ('DR953','2024-08-16 00:25:15','BCC10'),
         ('LGR80','2024-08-16 00:35:15','BCC10'),
         ('KTC6','2024-08-16 01:00:15','BCC10'),
         ('ETR74','2024-08-16 02:00:28','BCC10'),
         ('VGR67','2024-08-16 02:10:00','BCC10'),
         ('BR432','2024-08-16 02:20:26','BCC10'),
         ('DR953','2024-08-16 02:30:45','BCC10'),
         ('LGR80','2024-08-16 02:50:11','BCC10'),
         ('KTC6','2024-08-16 03:00:55','BCC10'),
         ('BR432','2024-08-16 03:21:00','BCC10');


--Katyshape's movements--
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('KTC6','2024-08-16 00:00:10','BKT11'),
         ('LGR80','2024-08-16 00:21:03','BKT11'),
         ('BR432','2024-08-16 00:40:30','BKT11'),
         ('KTC6','2024-08-16 01:00:18','BKT11'),
         ('VGR67','2024-08-16 01:10:50','BKT11'),
         ('KTC6','2024-08-16 02:15:00','BKT11'),
         ('ETR74','2024-08-16 02:20:00','BKT11'),
         ('ETR74','2024-08-16 03:15:00','BKT11'),
         ('BR432','2024-08-16 03:20:59','BKT11');

--Droida's movements--
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('KTC6','2024-08-16 00:00:10','BDR12'),
         ('LGR80','2024-08-16 00:45:03','BDR12'),
         ('KTC6','2024-08-16 00:50:30','BDR12'),
         ('BR432','2024-08-16 03:20:18','BDR12');

--Cuty's movements--
INSERT INTO "Location" ("House_id","Time","Bracelet_id")
   VALUES('KTC6','2024-08-16 00:00:10','BCU13'),
         ('LGR80','2024-08-16 00:45:03','BCU13'),
         ('KTC6','2024-08-16 00:50:34','BCU13'),
         ('BR432','2024-08-16 03:20:45','BCU13');

--Bracelets informations--
INSERT INTO "Bracelet"("id","Bracelet_name")
    VALUES('BP01','Paul'),
          ('BJ02','Jane'),
          ('BS03','Sarah'),
          ('BL04','Laura'),
          ('BM05','Maggie'),
          ('BJ06','jenny'),
          ('BC07','Chris'),
          ('BJJ08','John'),
          ('BSM09','samourai'),
          ('BCC10','creepy'),
          ('BKT11','katyshape'),
          ('BDR12','Droida'),
          ('BCU13','Cuty');



SELECT * FROM "Residents";

SELECT * FROM "Employee";

SELECT * FROM "Robots";

SELECT * FROM "House";

SELECT * FROM "Bracelet";

--adding Cctv's informations--
INSERT INTO "Cctv"("id","Cctv_room","Date","Switch_on","Switch_off","Breakdown","Modification")
    VALUES ('CAM001','Dining room','2024-08-16','yes','No','2024-07-17 03:00:20','2024-07-17 03:10:35'),
           ('CAM002','Living room','2024-08-16','yes','No','2024-07-17 03:00:20','2024-07-17 03:10:35'),
           ('CAM003','Kitchen','2024-08-16','yes','No','2024-07-17 03:00:20','2024-07-17 03:10:35'),
           ('CAM004','Billiard room','2024-08-16','yes','No','2024-07-17 03:00:20','2024-07-17 03:10:35'),
           ('CAM005','Video game room','2024-08-16','yes','No','2024-07-17 03:00:20','2024-07-17 03:10:35'),
           ('CAM006','Entrance','2024-08-16','yes','No','2024-07-17 03:00:20','2024-07-17 03:10:35');

--adding Modification_type informations--
INSERT INTO "Modification_type" ("Cctv_id","Description")
    VALUES ('CAM001','Voluntary shutdown of cameras coming from outside the house'),
           ('CAM002','Voluntary shutdown of cameras coming from outside the house'),
           ('CAM003','Voluntary shutdown of cameras coming from outside the house'),
           ('CAM004','Voluntary shutdown of cameras coming from outside the house'),
           ('CAM005','Voluntary shutdown of cameras coming from outside the house'),
           ('CAM006','Voluntary shutdown of cameras coming from outside the house');

--adding Evidence_One informations--
INSERT INTO "Evidence_One"("description")
    VALUES ('Damaged corner billiard');

--adding Evidence_Two informations--
INSERT INTO "Evidence_Two"("description")
    VALUES ('cobalt Blue paint on damaged billiard corner');

--adding Evidence_Three informations--
INSERT INTO "Evidence_Three"("description")
    VALUES ('cobalt Blue paint under sarah''s nails');

--adding Ransack_One informations--
INSERT INTO "Ransack_One"("description")
    VALUES ('Billiard room : Water on the floor from flower vase');

--adding Ransack_Two informations--
INSERT INTO "Ransack_Two"("description")
    VALUES ('Billiard room : Broken flower vase');

--adding Ransack_Three informations--
INSERT INTO "Ransack_Three"("description")
    VALUES ('Billiard room : Chair broken');

--adding Crime_scene informations--
INSERT INTO "Crime_scene" ("id",
                           "Victim",
                           "Date",
                           "House_id",
                           "Evidence_One_id",
                           "Evidence_Two_id",
                           "Evidence_Three_id",
                           "Ransack_One_id",
                           "Ransack_Two_id",
                           "Ransack_Three_id")
    VALUES (101,'Sarah','2024-08-16','BR432',1,1,1,1,1,1);


--I create a new column to add robots colors--
UPDATE "Robots"
SET "colors" = 'cobalt Blue. Grey. Purple'
WHERE "name" = 'samourai';

UPDATE "Robots"
SET "colors" = 'Black Purple'
WHERE "name" = 'creepy';

UPDATE "Robots"
SET "colors" = 'cobalt Blue. Grey. Purple . Gold'
WHERE "name" = 'katyshape';

UPDATE "Robots"
SET "colors" = 'White Pink'
WHERE "name" = 'Droida';

UPDATE "Robots"
SET "colors" = 'White purple'
WHERE "name" = 'Cuty';


--adding Suspect_Analyse_Post_Crime informations--
INSERT INTO "Suspect_Analyse_Post_Crime"("Bracelet_id","Analyse")
    VALUES ('BP01','No material evidence found on his body, no signs of a fight, no traces of paint.'),
           ('BJ02','No analysis has been conducted so far. Jane fainted when she saw the body of her deceased daughter and is currently hospitalized.'),
           ('BL04','No material evidence found on his body, no signs of a fight, no traces of paint.'),
           ('BM05','No material evidence found on his body, no signs of a fight, no traces of paint.'),
           ('BJ06','No material evidence found on his body, no signs of a fight, no traces of paint.'),
           ('BC07','No material evidence found on his body, no signs of a fight, no traces of paint.'),
           ('BJJ08','No material evidence found on his body, no signs of a fight, no traces of paint.'),
           ('BSM09','No material evidence found on his body, no signs of a fight, no scrath on is body paint.'),
           ('BCC10','No material evidence found on his body, no signs of a fight, no scrath on is body paint.'),
           ('BKT11','Water was found inside its right robotic arm, the paint on its armor is undamaged, with no scratches, but the color is no longer cobalt blue; it is now sapphire blue.'),
           ('BDR12','No material evidence found on his body, no signs of a fight, no scrath on is body paint.'),
           ('BCU13','No material evidence found on his body, no signs of a fight, no scrath on is body paint.');


-- STARTING INVESTIGATION--

-- Shows information from two tables,bracelet_id and Bracelet_name together--
SELECT *
   FROM "Bracelet"
   RIGHT JOIN "Suspect_Analyse_Post_Crime" ON "Bracelet_id" = "Bracelet"."id";

-- show Crime_scene informations--
SELECT * FROM "Crime_scene";

-- show information on the crime scene--
SELECT * FROM "House";

--details on the victime--
SELECT "Victim","Date","House_id","Room_name"
FROM "Crime_scene" INNER JOIN "House"
ON "Crime_scene"."House_id" = "House"."id";


--details on the victime, and evidence--
SELECT "Victim","Date","House_id","Evidence_One_id","description"
FROM "Crime_scene" INNER JOIN "Evidence_One"
ON "Crime_scene"."Evidence_One_id" = "Evidence_One"."id";


--details on the victime, and evidence--
SELECT "Victim","Date","House_id","Evidence_Two_id","description"
FROM "Crime_scene" INNER JOIN "Evidence_Two"
ON "Crime_scene"."Evidence_Two_id" = "Evidence_Two"."id";


--details on the victime, and evidence--
SELECT "Victim","Date","House_id","Evidence_Three_id","description"
FROM "Crime_scene" INNER JOIN "Evidence_Three"
ON "Crime_scene"."Evidence_Three_id" = "Evidence_Three"."id";

-- checking informations from employees residents and robots tables--
SELECT *
FROM "Residents";

--information about the victime--
SELECT*
FROM "Residents"
WHERE "Bracelet_id" =(
    SELECT "id"
    FROM "Bracelet"
    WHERE "Bracelet_name" = 'Sarah'
);

SELECT *
FROM "Employee";

SELECT *
FROM "Robots";

--show robots informations--
CREATE VIEW colors_evidence AS
SELECT *
FROM "Robots"
WHERE "colors" LIKE '%cobalt%' AND '%Blue%';

--show information about location and time--
SELECT*
FROM "Location"
WHERE "Bracelet_id" ='BS03';


--show movements from Sarah--
CREATE VIEW Sarah_movements AS
SELECT "House_id","Room_name","Time","Bracelet_id","Bracelet_name","Cctv_id","Crime_scene"
FROM "Location"
JOIN "Bracelet" ON "Location"."Bracelet_id" = "Bracelet"."id"
JOIN "House" ON "Location"."House_id" = "House"."id"
WHERE "Bracelet_name" ='Sarah';

SELECT * FROM "Sarah_movements"
ORDER BY "Time";

SELECT * FROM "Sarah_movements"
WHERE "Room_name"= 'Billiard room'
ORDER BY "Time";

--Now let's check all movements from the Robots, "katyshape and Samourai"--
CREATE VIEW Samourai_movements AS
SELECT "House_id","Room_name","Time","Bracelet_id","Bracelet_name","Cctv_id","Crime_scene"
FROM "Location"
JOIN "Bracelet" ON "Location"."Bracelet_id" = "Bracelet"."id"
JOIN "House" ON "Location"."House_id" = "House"."id"
WHERE "Bracelet_name" ='samourai';

--show samourai_movements--
SELECT * FROM Samourai_movements
ORDER BY "Time";


--filter Samourai_movements--
SELECT * FROM Samourai_movements
WHERE "Room_name"= 'Billiard room'
ORDER BY "Time";

--filter Samourai_movements--
SELECT * FROM Samourai_movements
WHERE "Time" >'2024-08-16 02:20:40' AND "Room_name"= 'Billiard room'
ORDER BY "Time";

--VIEW CREATION TO ANALYSE KATYSHAPE MOVEMENTS--
CREATE VIEW katyshape_movements AS
SELECT "House_id","Room_name","Time","Bracelet_id","Bracelet_name","Cctv_id","Crime_scene"
FROM "Location"
JOIN "Bracelet" ON "Location"."Bracelet_id" = "Bracelet"."id"
JOIN "House" ON "Location"."House_id" = "House"."id"
WHERE "Bracelet_name" ='katyshape';

--FILTER MOVEMENTS--
SELECT * FROM katyshape_movements
ORDER BY "Time";

--FILTER MOVEMENTS--
SELECT * FROM katyshape_movements
WHERE "Room_name"= 'Billiard room'
ORDER BY "Time";


--FILTER MOVEMENTS--
SELECT * FROM katyshape_movements
WHERE "Time" >'2024-08-16 02:20:40' AND "Room_name"= 'Billiard room'
ORDER BY "Time";

-- I ADD A COLUMN TO INCLUDE MY FEEDBACK CONCERNING THE ANALYSE FROM THE CRIME--
ALTER TABLE "Suspect_Analyse_Post_Crime_Copy"
ADD COLUMN "My_feed_Back" TEXT;

--TO INCLUDE MY FEED BACK--
UPDATE "Suspect_Analyse_Post_Crime_Copy"
SET "My_feed_Back" = 'Even if the same color from his armor body has been find on the crime scene.
                      no evidence accuses Samourai'
WHERE "Bracelet_id" = 'BSM09';

--TO INCLUDE MY FEED BACK--
UPDATE "Suspect_Analyse_Post_Crime_Copy"
SET "My_feed_Back" = 'Water was found at the crime scene and also inside the arm of Katyshape, ID BKT11.
        Additionally, Katyshape left the house at 2:20 a.m. and returned at 3:15.
        The cameras were turned off at 3:00 a.m. outside and reactivated at 3:10,
        likely the ten minutes during which the murder took place.
        Katyshape has no scratches, but her paint is no longer cobalt blue
        it is now sapphire blue. Katyshape is likely the perpetrator of the murder.'
WHERE "Bracelet_id" = 'BKT11';


-- UPDATE ALL THE ROWS--
UPDATE "Suspect_Analyse_Post_Crime_Copy"
SET "My_feed_Back" = 'NOTHING TO REPORT'
WHERE "My_feed_Back" IS NULL;


-- THIS QUERY ALLOW ME TO DELETE MULTIPLE ROWS AND SEND THE INNOCENTS, IN THE INNOCENT TABLE WITH A TRIGGER--
DELETE FROM "Suspect_Analyse_Post_Crime_Copy"
WHERE "My_feed_Back" = 'NOTHING TO REPORT';

-- To check if the trigger has run--
SELECT "Bracelet_name", "Bracelet_id", "Statut"
   FROM "Bracelet"
   RIGHT JOIN "Innocent" ON "Bracelet_id" = "Bracelet"."id";

-- To check if the trigger has run--
SELECT "Bracelet_name", "Bracelet_id", "Analyse", "My_feed_Back"
   FROM "Bracelet"
   RIGHT JOIN "Suspect_Analyse_Post_Crime_Copy" ON "Bracelet_id" = "Bracelet"."id";


--QUERY TO INSERT REAL SUSPECT IN A NEW TABLE--
INSERT INTO "Real_Suspect"("Bracelet_id")
    VALUES('BSM09'),
          ('BKT11');

-- To check The insertion--
SELECT "Bracelet_name","Bracelet_id"
   FROM "Bracelet"
   RIGHT JOIN "Real_Suspect_Copy" ON "Bracelet_id" = "Bracelet"."id";

-- THIS QUERY  DELETE THE SUSPECT TO SEND IN THE CULPRIT TABLE WITH A TRIGGER--
DELETE FROM "Real_Suspect_Copy"
WHERE "Bracelet_id" = 'BKT11';

-- To check if the trigger has run--
SELECT "Bracelet_name","Bracelet_id", "statut"
   FROM "Bracelet"
   RIGHT JOIN "Culprit" ON "Bracelet_id" = "Bracelet"."id";
