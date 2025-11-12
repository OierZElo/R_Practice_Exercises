I apologize for the misunderstanding. I provided the R code in a code block instead of a general Markdown format.

Here is the conversion of the Partial Exam into a standard Markdown file suitable for a GitHub repository's README or documentation.

💻 Technical and Scientific Programming - Partial Exam

Date: February 6, 2024 Course: Technical and Scientific Programming

📜 Instructions

    All the exercises in this Partial Exam must be completed in an R file.

    The file to be submitted in ALUD must be named according to this format: SurnameFirstName (e.g., PikatzaHuergaAmaia).

    The first line in the file must be a commented line with your complete name.

    In the file, indicate which exercises you are solving; use comments.

    You must use the R libraries lubridate and tibble.

📚 Exam: Student Performance Dataset

Scenario: Imagine you have a dataset called "students" that contains information about the academic performance of students in different subjects.

Dataset Columns:
Column Name	Description	Format
student_id	Unique ID of the student.	Integer
name	Full name of the student.	String
birth_date	Date of birth of the student.	"YYYY-MM-DD"
subject	Name of the subject.	String
grade	Grade obtained by the student.	Numeric
grade_date	Evaluation date.	String/Date

✅ Tasks to Perform (R Programming)

1. Data Conversion (1p)

    Convert the data into a tibble.

2. Date Format (1p)

    Convert the columns birth_date and grade_date to the appropriate date format using a lubridate function.

3. Age Calculation (1p)

    Create a new column called age that represents the age of the students in years.

4. Birth Month (1p)

    Create an additional column called birth_month that indicates each student's birth month.

5. Performance Factor (2p)

    Create a factor called performance that classifies grades into three categories:

        "Low": grade < 5

        "Moderate": grade < 8

        "High": grade >= 8

6. Time Difference (1p)

    Calculate the difference in days between the date of birth and the date of the first grade for each student.

7. Time Series (1p)

    Use the grade column to create a time series using the ts() function for monthly frequency and starting this month and this year.

8. Conditional Bonus (2p)

    Use a loop and conditionals to assign a 5% bonus to the grades of students born in the summer months (June, July, August).

        Formula: grade + grade * 0.05

The file should show the state of the data Before and After the operations.
