<<<<<<< HEAD
# UnsualSuspect
=======
 # UnsualSuspect
>>>>>>> 4806271151b6a8755363ffd8d4ddacc255ebc59c
![Unsual_cover](https://github.com/user-attachments/assets/855205fb-3b5b-48c5-a0cd-eaf66600a775)

By ACHILLE MABOA

Video overview: https://youtu.be/nueaiIjHk54

<<<<<<< HEAD
# Scope


=======

# Scope


>>>>>>> 4806271151b6a8755363ffd8d4ddacc255ebc59c
This database analyze movement data related to the occupants
of the house,in this specific case, the residents, employees, and robots.
This analysis is possible because each person inside possesses a unique bracelet, similar to a "user ID,"
and each room is identifiable by a unique camera and id.
With this database, it is possible to precisely trace the movements of a house occupant.

### Residents: 
	id,First_name, Last_name, Gender,Birth_date,Role, Bracelet_id

### Employee:
 id,First_name, Last_name, Gender,Birth_date,hire_date,Function,Bracelet_id

### Robots:
 id, name,company, Function, hire_date,Price, Bracelet_id

### House:
 id,Room_name,Cctv_id,Crime_scene.

### Location:
 id,House_id,Bracelet_id.

### Bracelet:
 id,Bracelet_name.
	
### Cctv:
 id,Cctv_room,Date,Switch_on,Switch_off,Breakdown,Modification.

### Modification_type:
 id,Cctv_id,Description.

### Evidence_One:
 id,description.

### Evidence_Two:
 id,description.

### Evidence_Three:
 id,description.

### Ransack_One:
 id,description.

### Ransack_Two:
 id,description.

### Ransack_Three:
 id,description.

### Crime_scene:
 id,Victim,Date,House_id,Evidence_One,Evidence_Two,Evidence_Three,Ransack_One,Ransack_Two,Ransack_Three.

### Suspect_Analyse_Post_Crime:
 id,Bracelet_id,Analyse.

### Innocent:
 id,Bracelet_id,Statut.

### Real_Suspect:
 id,Bracelet_id.


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
    -Victim TEXT NOT NULL,
    -Date TEXT NOT NULL,
    -House_id TEXT NOT NULL,
    -Evidence_One_id INTEGER ,
    -Evidence_Two_id INTEGER ,
    -Evidence_Three_id INTEGER,
    -Ransack_One_id INTEGER,
    -Ransack_Two_id INTEGER,
    -Ransack_Three_id INTEGER,
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
    -Statut T
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

INDEX  "House" ("Bracelet_id")

INDEX  "Residents" ("First_name")

INDEX "Residents" ("Last_name")

INDEX "Employee" ("First_name")

INDEX "Employee" ("Last_name")

INDEX "Robots" ("name")

INDEX "Location" ("Bracelet_id")
<<<<<<< HEAD

## VIEWS
To check and display movements from the victim and other,
=======

## VIEWS
To check and display movements from the victim and other,

CREATE VIEW colors_evidence AS

CREATE VIEW Sarah_movements AS

CREATE VIEW Samourai_movements AS
>>>>>>> 4806271151b6a8755363ffd8d4ddacc255ebc59c

## Limitations

* The database represents an event over a short period of time and not over a long period,
*  where more information could have been obtained.
* For example, analyzing an entire day would have provided more consistent data.
