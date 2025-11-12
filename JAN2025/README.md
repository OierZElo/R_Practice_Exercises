📄 Technical and Scientific Programming - Partial Exam

Date: January, 2025

📜 Instructions

    Install all the packages required for the exam (lubridate, stringr, and tibble) and the CSV file from ALUD, then unplug the ethernet cable from your computer. Internet access is not allowed during the exam.

    The R file must be named in this format: DNI_Partial.R. The first line in the file must be a commented line with your complete name.

    Complete each exercise orderly, writing your code in R. Be sure to comment on your code when necessary to explain what you're doing.

    Use the provided CSV dataset, which contains the following columns:

        Day: Day.

        Month: Month.

        Year: Year.

        Country.Region: Country & Region.

        Province: Province.

        Type: Full or Partial.

✅ Exercises

1. Data Loading and Conversion (2p)

    Load the CSV file into R and convert it to a tibble.

    Make sure to check that the file is loaded correctly.

2. Factor Conversion and Row Insertion (2p)

    Transform the Month column in the tibble into a factor.

    Then, add a new row to the tibble with the following data:

        Day = 25

        Month = "febrero"

        Year = 2020

        Country.Region = "Bahrain"

        Type = "Full"

    Ensure the new row is correctly integrated into the tibble.

3. Data Cleaning and Counting (2p)

    Remove all rows from the tibble where the Type column is NA.

    Then, count the occurrences of each month in the Month column without using loops or conditional statements.

4. Date Column Creation (1p)

    Create a new column called Date that combines Year, Month, and Day into a single date column.

    Ensure that the new column has the correct date format. Use the Lubridate package.

5. Function Skeleton and Error Handling (2p)

    Create the skeleton of a function called summarize_rows() that takes a tibble as input.

    The function should:

        Check if the tibble contains at least the columns Date, Country.Region, Province, and Type. (It can contain more than those.)

        If any of the columns are missing, terminate the function and display an appropriate error message.

6. Function Body Completion (2p)

    Complete the body of the summarize_rows() function. For each row, the function should check the value of the Type column and construct a string:

        If the value is "Full":

            Format: "Country.Region reported a lockdown on Year-Month-Day"

        If the value is "Partial":

            Format: "Country.Region reported a curfew on Year-Month-Day"
