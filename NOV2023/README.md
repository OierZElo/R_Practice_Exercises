📄 Technical and Scientific Programming - Partial Exam

Date: November 14, 2023

📜 Instructions

    All the exercises in this Partial Exam must be completed in an R file.

    The file to be submitted in ALUD must be named according to this format: SurnameFirstName-PartialExam (e.g., PikatzaHuergaAmaia-PartialExam).

    The first line in the file must be a commented line with your complete name.

    In the file, clearly indicate which exercises you are solving; use comments.

    You will need to install and load the following packages in addition to Base-R:

        Tibble

        Lubridate

✅ Exam Exercises

Exercise 1: Other Data Structures (3p)

Complete the following exercises using the data frame data:

    Convert the blood type column to an ordered factor in the following order and print it:
    O−<O+<B−<A−<B+<A+<AB−<AB+

    Print how often each blood type appears using the data structure best suited for this purpose.

    Create and print 3 time-series with the data in the column pulse with the following characteristics:

        ts1: quarterly data, starting 2nd quarter of 1969

        ts2: monthly data, starting September of 2000

        ts3: hourly data (24h per day), starting the first day at noon

Exercise 2: Control Flow (2p)

Write a function in R called evaluate_health that takes four vectors as input: cholesterol, glucose, blood_pressure, and BMI.

    These vectors must all have the same size; otherwise, the function should terminate and display an error.

    The function must perform the following evaluations for each person and return a vector of strings with the conclusions in the following string format: "Person 1: Cholesterol level normal. Glucose level normal. Hypertension. Obesity."

    You may use a loop for this exercise if you wish.

Evaluation Criteria:
<img width="883" height="291" alt="image" src="https://github.com/user-attachments/assets/aa17b9fc-0d1a-4908-88eb-a1ca84d90e37" />

Function Call:
Call the function you just created with the following vectors and print the return:

    cholesterol: (180, 210, 190, 220)

    glucose: (95, 110, 120, 130)

    arterial_pressure: (118, 130, 140, 150)

    imc: (22, 25, 29, 31)

Exercise 3: Lubridate Package (4p)

The data frame named data contains a column named dates in text format (character) with dates. Your task is to perform the following operations using functions from the lubridate package to manipulate this column:

    Convert the dates column to date format.

    Create a vector with the quarter of the year that the dates correspond to.

    Create a vector containing only the years of the dates.

    Add two new columns called Qtr for the vector of quarters and year for the years to the data frame data and store it in data2.

    How many weeks have elapsed from the farthest date and the date closest to the present?

Exercise 4: Tibble Package (1p)

Having the following data about childhood:

<img width="325" height="182" alt="image" src="https://github.com/user-attachments/assets/e5aae5cf-4df5-4006-a8d4-3619ef201126" />

    Create that tibble using 2 different ways.

    Access the number 8.9 in 3 different ways.

Extra Exercise (1p)

Explain what confusion matrices are, what they are used for, and give an example of their use in R.
