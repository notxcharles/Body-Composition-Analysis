| Field Name   | Description           | Data Type | Constraints/Format        | Example Value   | Additional Information
|--------------|-----------------------|-----------|---------------------------|-----------------|-----------|
| Activity Date      | Date of record | String    | Format: YYYY-MM-DD | 2020-07-15        | Date value may not be unique as this represents one logged exercise
| Activity Name      | This might hint at the type of exercises done within the activity | String   |                      | Evening Run              |
| Activity Type      | Type of exercise | String   |      | Run            |
| Distance      | How far did I travel, measured in km | Float   | >= 0     | 5.1            |
| Calories      | Estimated amount of calories burned during exercise | Integer   | >= 0     | 141            | This is based on Strava's hidden formula for estimating number of calories burned
| Did Exercise      | True if exercise was logged on that day | Boolean   | 0 or 1     | 1 (true)            | Multiple exercises can be logged on one day