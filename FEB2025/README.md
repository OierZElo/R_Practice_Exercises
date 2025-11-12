💻 Technical and Scientific Programming - Partial Exam

Date: February, 2025

📜 Instructions

    Install all the packages required for the exam (lubridate, stringr, and tibble) and the CSV file from ALUD, then unplug the ethernet cable from your computer. Internet access is not allowed during the exam.

    The R file must be named in this format: DNI_Partial.R. The first line in the file must be a commented line with your complete name.

    Complete each exercise orderly, writing your code in R. Be sure to comment on your code when necessary to explain what you're doing.

    Use the provided CSV dataset, which contains the following columns:

        Date: Date.

        Temperature: Temperature.

        Wind Speed: Wind speed (km/h).

        Air Pressure: Atmospheric pressure.

✅ Exercises

1. Data Loading and Conversion (1p)

    Load the CSV file into R and convert it to a tibble.

    Make sure to check that the file is loaded correctly.

2. Date Formatting and Range (2p)

    Ensure that the Date column is properly formatted as a date using the Lubridate package.

    Then, find the earliest and latest dates in the dataset and calculate the total number of days covered in the dataset.

3. Monthly Time Series (2p)

    Compute the mean wind speed for each month.

    Using the new vector with the means, create a time series grouped into monthly intervals.

4. Wind Speed Classification (2p)

    Add a new column called 'classification' to the tibble that classifies each observation based on wind speed:

        If the wind speed is greater than or equal to 50 km/h, classify it as "stormy."

        If the wind speed is between 20 and 49 km/h, classify it as "windy."

        If the wind speed is below 20 km/h, classify it as "calm."

5. Ordered Factor Conversion (1p)

    Convert the 'classification' column into an ordered factor with levels: "calm" < "windy" < "stormy".

6. Summary Function (2p)

    Create a function called summarize_data() that takes the dataset as input and prints a summary containing:

        The mean temperature.

        The mean wind speed.

        The mean air pressure.

        A count of how many days are stormy, windy, or calm.
