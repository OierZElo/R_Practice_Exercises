📄 Technical and Scientific Programming - Partial Exam

Date: November, 2024

📜 Instructions

    Install all the packages required for the exam (lubridate, stringr, and tibble) and the CSV file from ALUD, then unplug the ethernet cable from your computer. Internet access is not allowed during the exam.

    The R file must be named in this format: DNI_Partial.R.

    The first line in the file must be a commented line with your complete name.

    Complete each exercise orderly, writing your code in R. Be sure to comment on your code when necessary to explain what you're doing.

    Use the provided CSV dataset, which contains the following columns:

        Year: Year of the measurement.

        Month: Month of the measurement.

        Day: Day of the measurement.

        Temperature: Temperature.

        Height: Height.

        Weight: Weight.

✅ Exercises

1. Data Loading and Conversion

    Load the CSV file into R and convert it to a tibble.

    Make sure to check that the file is loaded correctly.

2. Date Column Creation

    Create a new column called Date that combines Year, Month, and Day into a single date column.

    Ensure that the new column has the correct date format. Use the Lubridate package.

3. Date Calculation

    Find the last date (chronologically) in the Date column of the tibble.

    Calculate how many years, months, and days have passed until today (the current date).

4. Subsetting and Time Series

    Create another tibble containing only the rows where the year is 2004, and only the Date and Weight columns.

    Using the column Weight from that new tibble, create a time series.

    Group the data into monthly periods and ensure the time series starts and ends on the same dates as the new tibble.

5. Function Skeleton and Error Handling

    Create a function called fever_days() that takes a tibble with the columns Date and BodyTemperature as arguments.

    The function should:

        Check that the tibble contains only those columns, Date and BodyTemperature.

        Otherwise, the function should end and display an error message.

6. Loop and Conditional Exercise (Function Body Completion)

    Complete the body of the function fever_days():

        If the temperature is greater than or equal to 37.5 °C, classify the month as "febrile."

        If the temperature is below 37.5 °C, classify the month as "normal."

    The function should return a vector of strings in the format:

        "Year-month-day: febrile"

        or "Year-month-day: normal", based on the classification for each month in the dataset.

7. Concept Explanation

    What are confusion matrices, what are they for, and how are they made in R?

    Explain it using comments at the end of the script and give an example.
