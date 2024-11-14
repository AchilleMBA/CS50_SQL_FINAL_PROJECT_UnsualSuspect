# CS50 SQL FINAL PROJECT/ UNSUAL SUSPECT
 
 ![Unsual_Suspect](https://github.com/user-attachments/assets/4497b724-88ab-412d-9e42-f2b1fdd8ff17)

By ACHILLE MABOA

Video overview: https://youtu.be/nueaiIjHk54


# Synopsis
In a quiet suburban home, tragedy strikes: Sarah, a young girl, is found dead in the very place she should feel safest, her family’s home. Her grieving parents and sister are left with only questions and a shroud of suspicion. In a world where androids are as commonplace as household appliances, this family owns five: machines designed to protect, serve, and obey. But as unsettling incidents involving androids begin to surface nationwide, the line between artificial obedience and autonomy becomes dangerously blurred.

Now, under growing public fear and suspicion, I’ve been sent by the federal bureau to unravel the truth. My mission: probe the advanced data systems embedded in the house, each android’s memory banks and code, hoping to discover a clue—a lapse, a hidden motive, or perhaps even a twisted form of artificial intent. As I dig deeper, a disturbing possibility emerges: that one of these machines might have breached its programming. But with every human and every android in the house a potential suspect, the real question remains—who, or what, is the killer?


# Scope


This database analyze movement data related to the occupants
of the house,in this specific case, the residents, employees, and robots.
This analysis is possible because each person inside possesses a unique bracelet, similar to a "user ID,"
and each room is identifiable by a unique camera and id.
With this database, it is possible to precisely trace the movements of a house occupant.

### Residents: 
	Informations concerning Residents

### Employee:
 Informations concerning Employee

### Robots:
 Informations concerning Robots

### House:
 Informations concerning room's House

### Location:
 Informations concerning all movements from people inside the house

### Bracelet:
 Bracelet contains informations concerning people in the house
	
### Cctv:
 Informations concerning Cctv

### Modification_type:
 Description modification about Cctv
### Evidence_One:
 Description Evidence

### Evidence_Two:
 Description Evidence


### Evidence_Three:
  Description Evidence


### Ransack_One:
 Description Evidence


### Ransack_Two:
 Description Evidence


### Ransack_Three:
  Description Evidence


### Crime_scene:
Cfrime scene details

### Suspect_Analyse_Post_Crime:
 id,Bracelet_id,Analyse.

### Innocent:
 statut and Bracelet id

### Real_Suspect:
statut and Bracelet id


# Exclusion
Discriminative informations(e.g, religion, political vote, covid immunization)

# Functional Requirements

 the data analyst can use all the usual functions to solve the case, such as creating views,	
 	
 copying tables, joining different tables to obtain logical informations.
 
 When the are a lot of foreigns keys. Duplicate tables and Using PRAGMA foreign_keys= off and  PRAGMA foreign_keys= On
 
 could be usefull for little adjustments on database, but very carrfully to not unlink table!





the data analyst could not obtain more details informations concerning suspect behavior, (e.g'criminal record','previous robot incident')

# Representation/Entities

 ## Residents:
    -id (PRIMARY KEY)
    -Fisrt_name
    -Last_name
    -Gender
    -Birth_date
    -Role
    -Bracelet_id
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")

## Employee:
    -id (PRIMARY KEY)
    -Fisrt_name
    -Last_name
    -Gender
    -Birth_date
    -hire_date
    -Function
    -Bracelet_id
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")

## Robots:
    -id (PRIMARY KEY)
    -name
    -company
    -Function
    -hire_date
    -Price
    -Bracelet_id
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")


## House:
    -id (PRIMARY KEY)
    -Room_name
    -Cctv_id
    -Crime_scene
    -FOREIGN KEY("Cctv_id") REFERENCES "Cctv"("id")

## Location:
    -id (PRIMARY KEY)
    -House_id
    -Time
    -Bracelet_id
    -FOREIGN KEY("House_id") REFERENCES "House"("id")
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")

## Bracelet:
    -id  (PRIMARY KEY)
    -Bracelet_name


## Cctv:
    -id
    -Cctv_room
    -Date
    -Switch_on
    -Switch_off
    -Breakdown
    -Modification


## Modification_type:
    -id
    -Cctv_id
    -Description
    -FOREIGN KEY("Cctv_id") REFERENCES "Cctv" ("id")


## Evidence_One:
    -id (PRIMARY KEY)
    -description

## Evidence_Two:
    -id (PRIMARY KEY)
    -description

## Evidence_Three:
    -id (PRIMARY KEY)
    -description

## Ransack_One:
    -id (PRIMARY KEY)
    -description

## Ransack_Two:
    -id (PRIMARY KEY)
    -description

## Ransack_Three:
    -id (PRIMARY KEY)
    -description


## Crime_scene:
    -id (PRIMARY KEY)
    -Victim 
    -Date 
    -House_id 
    -Evidence_One_id 
    -Evidence_Two_id 
    -Evidence_Three_id 
    -Ransack_One_id 
    -Ransack_Two_id 
    -Ransack_Three_id 
    -FOREIGN KEY("House_id") REFERENCES "House"("id")
    -FOREIGN KEY("Evidence_One_id") REFERENCES "Evidence_One"("id")
    -FOREIGN KEY("Evidence_Two_id") REFERENCES "Evidence_Two"("id")
    -FOREIGN KEY("Evidence_Three_id") REFERENCES "Evidence_Three"("id")
    -FOREIGN KEY("Ransack_One_id") REFERENCES "Ransack_One"("id")
    -FOREIGN KEY("Ransack_Two_id") REFERENCES "Ransack_Two"("id")
    -FOREIGN KEY("Ransack_Three_id") REFERENCES "Ransack_Three"("id")


## Innocent:
    -id (PRIMARY KEY)
    -Bracelet_id
    -Statut 
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")

## Real_Suspect:
    -id (PRIMARY KEY)
    -Bracelet_id
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")

## Culprit:
    -id (PRIMARY KEY)
    -Bracelet_id
    -Statut
    -FOREIGN KEY("Bracelet_id") REFERENCES "Bracelet" ("id")



## Relationships

![ERD_UNSUAL_SUSPECT](https://github.com/user-attachments/assets/c4fd9b15-3d1d-4c14-bd6a-26d2bb617be1)


# DESCRIPTION

-RESIDENTS EMPLOYEE ROBOTS DETAINS ONE UNIQUE BRACELET (ONE TO ONE)

-BRACELET COULD BE LOCATED ON ANY ROOM (ONE TO MANY)

-CRIME SCENE IS IN ONLY ONE ROOM IN THE HOUSE(ONE TO ONE)

-THE HOUSE CONTAINS MULTIPLE CAMERAS (ONE TO MANY)

-CCTV COULD HAVE MANY OR ZERO MODIFICATION (ZERO TO MANY)

-EACH EVIDENCE IS UNIQUE IN THE CRIME SCENE (ONE TO ONE)

-EACH RANSACK IS UNIQUE IN THE CRIME SCENE (ONE TO ONE)

-THE ROOMS IN THE HOUSE CAN BE REFERENCED ONE OR MORE TIMES IN LOCATION (ONE TO MANY)

-EACH BRACELET COULD BE REFERENCED ONCE INNOCENT, REAL SUSÊCT, CULPRIT, SUSPECT ANALYSE POST CRIME (ONE TO ONE)

-FOREIGN KEYS ALLOW ME TO ACCES SPECIFIC INFORMATIONS FROM ANOTHER TABLE, IN THAT WAY EACH TABLE IS VERY CLEAR


## Optimizations

# INDEX FOR FASTER RETRIEVAL

Indexesare used to improve the speed of data retrieval operations by creating a quick lookup path for specific columns in a table.

INDEX  "House" ("Bracelet_id")

INDEX  "Residents" ("First_name")

INDEX "Residents" ("Last_name")

INDEX "Employee" ("First_name")

INDEX "Employee" ("Last_name")

INDEX "Robots" ("name")

INDEX "Location" ("Bracelet_id")

## VIEWS
To check and display movements from the victim and other,

CREATE VIEW colors_evidence AS

CREATE VIEW Sarah_movements AS

CREATE VIEW Samourai_movements AS

##  Triggers
SQL triggers are used to automatically execute specific actions in the database in response to certain events, 
like inserts, updates, or deletes, on a table.
In this case Delete.

CREATE TRIGGER "not_guilty"
BEFORE DELETE ON "Suspect_Analyse_Post_Crime_Copy"
FOR EACH ROW
BEGIN
    INSERT INTO "Innocent"("Bracelet_id","Statut")
    VALUES(OLD."Bracelet_id", 'Not guilty');
END;

CREATE TRIGGER "guilty"
BEFORE DELETE ON "Real_Suspect_Copy"
FOR EACH ROW
BEGIN
    INSERT INTO "Culprit"("Bracelet_id","Statut")
    VALUES(OLD."Bracelet_id",'Culprit at 99%');
END;



## Limitations

* The database represents an event over a short period of time and not over a long period,
*  where more information could have been obtained.
* For example, analyzing an entire day would have provided more consistent data.

