### Backend API for the TimeTable mobile app that I built for my college


#### Whats new?

* PHP based management console added for backend
* Now timetable canbe easily managed/updated via the backend console GUI


#### API Documentation


###### Request URL: <http://[serverdomain]/index.php?class=class_name&day=day_no>


##### Variables:

* `class` -> [String Value] The `class` for which the timetable is needed. For eg. fy_it, ty_cs, sy_bms
, sy_commerce_a, etc. It is the name of the table in the database.
* `day` -> [Integer Value] `day` must contain a numeric value (1-6). It represents the working days in a week.
For eg 1 for Monday, 2 for Tuesday and so on (as represented in the database).


#### Console Documentation

* documentation coming soon
