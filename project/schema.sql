-- CREATION TABLE FOR MY UNSUAL_SUSPECT DATABASE--

--Residents informations--
CREATE TABLE IF NOT EXISTS "Residents"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Fisrt_name" TEXT NOT NULL,
    "Last_name" TEXT NOT NULL,
    "Gender" TEXT NOT NULL CHECK("Gender" IN ('male', 'female', 'other')),
    "Birth_date" NUMERIC NOT NULL,
    "Role" TEXT NOT NULL,
    "Bracelet_id" TEXT UNIQUE,
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);
--Employee informations--
CREATE TABLE IF NOT EXISTS "Employee"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Fisrt_name" TEXT NOT NULL,
    "Last_name" TEXT NOT NULL,
    "Gender" TEXT NOT NULL CHECK("Gender" IN ('male', 'female', 'other')),
    "Birth_date" NUMERIC NOT NULL,
    "hire_date" NUMERIC NOT NULL,
    "Function" TEXT NOT NULL,
    "Bracelet_id" TEXT  UNIQUE,
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);
--Robots informations--
CREATE TABLE IF NOT EXISTS "Robots"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "name" TEXT NOT NULL,
    "company" TEXT NOT NULL,
    "Function" TEXT NOT NULL CHECK("Function" IN ('Domestic', 'Protection', 'friend')),
    "hire_date" NUMERIC NOT NULL ,
    "Price" REAL NOT NULL ,
    "Bracelet_id" TEXT  UNIQUE, 
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);
--House informations--
CREATE TABLE IF NOT EXISTS "House"(
    "id" TEXT PRIMARY KEY  NOT NULL UNIQUE,
    "Room_name" TEXT NOT NULL,
    "Cctv_id" TEXT NOT NULL ,
    "Crime_scene" TEXT ,
    FOREIGN KEY("Cctv_id") REFERENCES "Cctv"("id")

);

--Location informations--
CREATE TABLE IF NOT EXISTS "Location"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "House_id" TEXT NOT NULL ,
    "Time" TEXT NOT NULL,
    "Bracelet_id" TEXT NOT NULL ,
    FOREIGN KEY("House_id") REFERENCES "House"("id"),
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);

--Bracelet informations--
CREATE TABLE IF NOT EXISTS "Bracelet" (
   "id" TEXT PRIMARY KEY NOT NULL UNIQUE,
    "Bracelet_name" TEXT NOT NULL
);


--Index-
CREATE INDEX "Bracelet_id_index" ON "House" ("Bracelet_id");
CREATE INDEX "First_name_resident_index" ON "Residents" ("First_name");
CREATE INDEX "Last_name_resident_index" ON "Residents" ("Last_name");
CREATE INDEX "First_name_emplolyee_index" ON "Employee" ("First_name");
CREATE INDEX "Last_name_employee_index" ON "Employee" ("Last_name");
CREATE INDEX "name_robot_index" ON "Robots" ("name");
CREATE INDEX "Location_Bacelet_id_index" ON "Location" ("Bracelet_id");

--Cctv information--
CREATE TABLE IF NOT EXISTS "Cctv"(
    "id" TEXT PRIMARY KEY NOT NULL UNIQUE,
    "Cctv_room" TEXT NOT NULL,
    "Date" TEXT NOT NULL,
    "Switch_on" TEXT NOT NULL CHECK("Switch_on" IN ('yes', 'No')),
    "Switch_off" TEXT NOT NULL CHECK("Switch_off" IN ('yes', 'No')),
    "Breakdown" TEXT NOT NULL,
    "Modification" TEXT NOT NULL
);

--Modification_type informations--
CREATE TABLE IF NOT EXISTS "Modification_type"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Cctv_id" TEXT ,
    "Description" TEXT NOT NULL,
    FOREIGN KEY("Cctv_id") REFERENCES "Cctv" ("id")
);

--Evidence_One information--
CREATE TABLE IF NOT EXISTS "Evidence_One"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "description"TEXT NOT NULL
);

--Evidence_Two information--
CREATE TABLE IF NOT EXISTS  "Evidence_Two"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT z,
    "description"TEXT NOT NULL
);

--Evidence_Three information--
CREATE TABLE IF NOT EXISTS  "Evidence_Three"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "description"TEXT NOT NULL
);


--Ransack_One information--
CREATE TABLE IF NOT EXISTS  "Ransack_One"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "description"TEXT NOT NULL
);

--Ransack_Two information--
CREATE TABLE IF NOT EXISTS  "Ransack_Two"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "description"TEXT NOT NULL
);

--Ransack_Three information--
CREATE TABLE IF NOT EXISTS  "Ransack_Three"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "description"TEXT NOT NULL
);


--Crime_scene information--
CREATE TABLE IF NOT EXISTS "Crime_scene"(
    "id" INTEGER PRIMARY KEY NOT NULL UNIQUE,
    "Victim" TEXT NOT NULL,
    "Date" TEXT NOT NULL,
    "House_id" TEXT NOT NULL,
    "Evidence_One_id" INTEGER ,
    "Evidence_Two_id" INTEGER ,
    "Evidence_Three_id" INTEGER,
    "Ransack_One_id" INTEGER,
    "Ransack_Two_id" INTEGER,
    "Ransack_Three_id" INTEGER,
    FOREIGN KEY("House_id") REFERENCES "House"("id")
    FOREIGN KEY("Evidence_One_id") REFERENCES "Evidence_One"("id")
    FOREIGN KEY("Evidence_Two_id") REFERENCES "Evidence_Two"("id")
    FOREIGN KEY("Evidence_Three_id") REFERENCES "Evidence_Three"("id")
    FOREIGN KEY("Ransack_One_id") REFERENCES "Ransack_One"("id")
    FOREIGN KEY("Ransack_Two_id") REFERENCES "Ransack_Two"("id")
    FOREIGN KEY("Ransack_Three_id") REFERENCES "Ransack_Three"("id")
);

-- new column information : colors--
ALTER TABLE "Robots"
ADD COLUMN "colors";



--Suspect_Analyse_Post_Crime information--
CREATE TABLE IF NOT EXISTS "Suspect_Analyse_Post_Crime"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Bracelet_id" TEXT  UNIQUE,
    "Analyse" TEXT NOT NULL,
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);
-- I CREATE A COPY TO SEND EACH SUSPECT IN "Innocent", "Real_Suspect", "Culprit" TABLES--
CREATE TABLE "Suspect_Analyse_Post_Crime_Copy" AS
SELECT * FROM "Suspect_Analyse_Post_Crime";


-- I CREATE A COPY TO SEND A REAL  SUSPECT IN CULPRIT TABLE--
CREATE TABLE "Real_Suspect_Copy" AS
SELECT * FROM "Real_Suspect";


--Innocent information--
CREATE TABLE IF NOT EXISTS "Innocent" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Bracelet_id" TEXT  UNIQUE,
    "Statut" TEXT NOT NULL,
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);

--Real_Suspect information--
CREATE TABLE IF NOT EXISTS "Real_Suspect" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Bracelet_id" TEXT  UNIQUE,
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);


--Culprit information--
CREATE TABLE IF NOT EXISTS "Culprit" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    "Bracelet_id" TEXT  UNIQUE,
    "Statut" TEXT NOT NULL,
    FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")
);

--After delete in "Suspect_Analyse_Post_Crime" table, sending suspect in the innocent table"--
CREATE TRIGGER "not_guilty"
BEFORE DELETE ON "Suspect_Analyse_Post_Crime_Copy"
FOR EACH ROW
BEGIN
    INSERT INTO "Innocent"("Bracelet_id","Statut")
    VALUES(OLD."Bracelet_id", 'Not guilty');
END;


--After delete in "Real_Suspect" table, sending suspect in the Culprit table"--
CREATE TRIGGER "guilty"
BEFORE DELETE ON "Real_Suspect_Copy"
FOR EACH ROW
BEGIN
    INSERT INTO "Culprit"("Bracelet_id","Statut")
    VALUES(OLD."Bracelet_id",'Culprit at 99%');
END;

