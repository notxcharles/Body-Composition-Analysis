# Body-Composition-Analysis

I've got data that contains my nutritional macros, body weight and composition, exercise information and more. I'd like 
to see if I can reject/fail to reject these hypotheses:

## Potential hypotheses:
- Exercising doesn't burn any additional calories
  - H0: Exercise has no effect on body weight changes day to day when controlling for calorific intake and when daily 
carbohydrate content is less than 100g
  - H1: Exercise has an effect on body weight changes day to day when controlling for calorific intake and daily 
carbohydrate content is less than 100g

## Data Sources
### MyFitnessPal
*/DataInput/MyFitnessPal/file.csv*<br>
- I've logged what I have eaten each day with a high degree of accuracy. 
- I try to log all snacks I have and down to the number of sweets that I might have. 
- On nights out I look back through receipts or try and estimate what drinks I drank to add to MyFitnessPal
- Some meals will be incorrectly recorded, there is a risk of out of data being used. The nutritional data provided 
- from food manufactures may be out of date or inaccurate. For manufacturers, measuring nutritional data is a 
- destructive test, so the actual meal's nutritional information will vary

### Body Weight
*/DataInput/Weights and Total Cal Intake/file.csv*<br>
- I have tracked my body weight, BMI, Body Fat %, Muscle %, Visceral Fat % and RMI using Omron's BF508.
- All of these stats are estimated, however I have used the same set of scales throughout. Some data is missing, which 
I will fill with estimated values
- There is a significant amount of missing data between May 2022 and May 2023. This was because I lacked the strength 
to be able to balance and remain stable enough on the scales for long enough for them to measure my body composition

### Exercise Information
**Apply Health**
- All recorded workout data will be in Apple Health<br>

**Manual Imports**<br>
*/DataInput/My Workout Data/file.csv*
- For the first year+ of working out, I only recorded a paper copy of my exercises/weight/reps. I need to digitise 
these<br>

**Strong App**<br>
*/DataInput/Strong App/file.csv*
- Workout data from September 2024 is recorded using the Strong App<br>

**Strava**<br>
*/DataInput/Strava/file.csv*
- All running data will be on Strava. *if it's not on Strava, you haven't done it*<br>

**Garmin**
- Recent running data is primarily recorded and logged first on Garmin, then sent to Strava for additional logging

### Data Dictionaries
**<u>Table:</u> Cleaned_NutritionalData.csv**<br>
<u>File path:</u> 1. Inspect, Clean and Validate Dataset/CleanedData/Cleaned_NutritionalData.csv<br>
<u>Table Definition:</u> Nutritional data, tracked through MyFitnessPal with the aim of accurately estimating daily 
calorie intake. Macro nutrients have also been estimated by MyFitnessPal. Each individual food has been tracked to the 
best of my ability and the sum of this is contained in the dataset <br>
<u>Columns:</u><br>
Date- The date of the meal. Dates do not have to be unique, and refer to one meal that day.<br>
Calories- Total number of calories in the meal<br>
Fat (g)- Fat content of the meal in grams<br>
Carbohydrates (g)- Carbohydrate content of the meal in grams<br>
Protein (g)- Protein content of the meal in grams<br>
<u>Null values:</u> The dataset can contain null values/null rows. These represent days with no calorific intake (aka I 
didn't eat that day)<br>
<u>Unique value:</u> Rows don't have to be unique. Multiple rows with the same "Date" represent different meals. The 
total nutritional intake for that Date would be the sum of all rows on said Date<br><br>

**<u>Table:</u> Cleaned_Strava.csv**<br>
<u>File path:</u> 1. Inspect, Clean and Validate Dataset/CleanedData/Cleaned_NutritionalData.csv<br>
<u>Table Definition:</u> Exercise data that has been uploaded to Strava. Strava is a third party service so not the 
original source of the data, instead data is recorded using Garmin, Apple Fitness, Samsung Fitness or Strong App. 
Strava is an aggregation of all exercises<br>
<u>Columns:</u><br>
Activity Date- Date that the exercise started on. Activity Date does not have to be unique, rows with the same 
Activity Date represent different activities<br>
Activity Name- Name of the exercise<br>
Activity Type- Type of the activity, eg running, hiking, weight lifting etc<br>
Distance- If it was a run, the total distance. This appears to be measured in KMs but I have not checked all values<br>
Calories- Total calories that Strava has estimated have been burned during the exercise. This is calculated by strava, 
[More Info.](https://support.strava.com/hc/en-us/articles/216917097-Calorie-Calculation)<br>
<u>Null values:</u> Null values represent missing data. In cases where calories are null, Strava had insuffient data to 
calculate them<br>
<u>Unique value:</u> Rows don't have to be unique. Multiple rows with the same Activity Date mean that multiple 
activities have occurred on that date<br><br>

**<u>Table:</u> Cleaned_Strava.csv**<br>
<u>File path:</u> 1. Inspect, Clean and Validate Dataset/CleanedData/Cleaned_Strava.csv<br>
<u>Table Definition:</u> Exercise data that has been uploaded to Strava. Strava is a third party service so not the 
original source of the data, instead data is recorded using Garmin, Apple Fitness, Samsung Fitness or Strong App. 
Strava is an aggregation of all exercises<br>
<u>Columns:</u><br>
Activity Date- Date that the exercise started on. Activity Date does not have to be unique, rows with the same 
Activity Date represent different activities<br>
Activity Name- Name of the exercise<br>
Activity Type- Type of the activity, eg running, hiking, weight lifting etc<br>
Distance- If it was a run, the total distance. This appears to be measured in KMs but I have not checked all values<br>
Calories- Total calories that Strava has estimated have been burned during the exercise. This is calculated by strava, 
[More Info.](https://support.strava.com/hc/en-us/articles/216917097-Calorie-Calculation)<br>
<u>Null values:</u> Null values represent missing data. In cases where calories are null, Strava had insuffient data to 
calculate them<br>
<u>Unique value:</u> Rows don't have to be unique. Multiple rows with the same Activity Date mean that multiple 
activities have occurred on that date<br><br>

**<u>Table:</u> Cleaned_StrongApp.csv**<br>
<u>File path:</u> 1. Inspect, Clean and Validate Dataset/CleanedData/Cleaned_StrongApp.csv<br>
<u>Table Definition:</u> Hypotrophy exercise data that has been recorded on iOS Strong App. This contains information 
about the type of exercise, resistance weight, total number of repetitions and total sets.<br>
<u>Columns:</u><br>
Date- Date that the exercise occurred on<br>
Exercise Name- Name of the exercise<br>
Weight- Resistance weight of the exercise. This should be measured in kilograms, however I can't say with certainty 
that all values are<br>
Reps- Total number of repetitions managed with the Weight<br>
<u>Null values:</u> There should not be any null values in the dataset<br>
<u>Unique value:</u> Date are not unique<br><br>

**<u>Table:</u> Cleaned_WeightsAndCalories.csv**<br>
<u>File path:</u> 1. Inspect, Clean and Validate Dataset/CleanedData/Cleaned_WeightsAndCalories.csv<br>
<u>Table Definition:</u> Collected with Omron's BF508 scales. The same set of scales have been used for all days in 
the dataset. Although the scale has had different flooring under (which could affect weight values), I have tried to 
use it with a thin MDF board to minimise this variance. The BF508 estimates body composition: weight (kgs), fat %, 
muscle %, and visceral fat %.<br>
<u>Columns:</u><br>
Date- The date of the row/record. This should be unique, however multiple entries on the same date represent another 
body composition reading<br>
Weight, kg- My weight<br>
BMI- Calculated BMI based on weight and saved height<br>
Body Fat Percentage- Estimated percentage of body weight<br>
Muscle Percentage- Estimated percentage of muscle mass<br>
RM- Estimated resting metabolic rate<br>
Visceral Fat Percentage- Estimated percentage of visceral fat<br>
Calories- Daily sum of data from *Cleaned_NutritionalData.csv*
<u>Null values:</u> Any time where the calorie count is missing or 0 represents not eating that day. There are missing 
dates where data wasn't recorded. In *Cleaned_WeightsAndCalories_IncEstimated.csv*, missing rows are estimated<br>
<u>Unique value:</u> Each date should be unique, however in some rare cases multiple entries on the date represent 
another weight reading<br><br>