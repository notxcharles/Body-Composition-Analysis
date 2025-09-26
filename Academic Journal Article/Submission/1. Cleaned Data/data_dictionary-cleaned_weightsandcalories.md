| Field Name   | Description           | Data Type | Constraints/Format        | Example Value   | Additional Information
|--------------|-----------------------|-----------|---------------------------|-----------------|-----------|
| Date      | Date of record | String    | Format: DD/MM/YYYY | 13/05/2021        | 
| Weight, kg      | Weight recorded on date, measured in kilograms | Float    | Measured to one decimal place | 51.40        | 
| BMI      | Calculated BMI | Float    | Measured to one decimal place | 51.40        | 
| Body Fat Percentage      | Estimated percentage body fat  | Float    | Estimated to one decimal place, >= 0 | 6.1       | Estimated using Omron's proprietary formulas
| Muscle Percentage      | Estimated percentage muscle | Float    | Estimated to one decimal place, >= 0 | 46.4       | Estimated using Omron's proprietary formulas
| RMI      | Resting Metabolic Rate | Float    | >= 0 | 1363       | Estimated using Omron's proprietary formulas
| Visceral Fat Percentage      | Estimated Visceral Fat Percentage | Float    | Estimated using Omron's proprietary formulas >= 0 | 3       | Estimated using Omron's proprietary formulas
| Calories In      | Estimated calories eaten that day. Should equal all rows on that date in Cleaned_NutritionalDate | Float    | Estimated using Omron's proprietary formulas >= 0 | 1500       | Estimated using Omron's proprietary formulas